module Interpreter where

import Lexer

subst :: String -> Expr -> Expr -> Expr 
subst x n b@(Var v) = if v == x then 
                        n 
                      else 
                        b 
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Gt e1 e2) = Gt (subst x n e1) (subst x n e2)
subst x n (Gte e1 e2) = Gte (subst x n e1) (subst x n e2)
subst x n (If e e1 e2) = If (subst x n e) (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Eq e1 e2) = Eq (subst x n e1) (subst x n e2)
subst x n (Not e) = Not (subst x n e)
subst x n (Pair e1 e2) = Pair (subst x n e1) (subst x n e2)
subst x n (RetornaP e) = RetornaP (subst x n e)
subst x n (RetornaS e) = RetornaS (subst x n e)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n e = e 

isvalue :: Expr -> Bool 
isvalue BTrue = True
isvalue BFalse = True
isvalue (Num _) = True
isvalue (Lam _ _ _) = True 
isvalue _ = False 

step :: Expr -> Maybe Expr 
step (Add (Num n1) (Num n2)) = Just (Num (n1 + n2))
step (Add (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Add (Num n1) e2')
                           _        -> Nothing
step (Add e1 e2) = case step e1 of 
                     Just e1' -> Just (Add e1' e2)
                     _        -> Nothing 
step (Sub (Num n1) (Num n2)) = Just (Num (n1 - n2))
step (Sub (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Sub (Num n1) e2')
                           _        -> Nothing
step (Sub e1 e2) = case step e1 of
                      Just e1' -> Just (Sub e1' e2)
                      _        -> Nothing
step (Mul (Num n1) (Num n2)) = Just (Num (n1 * n2))
step (Mul (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Mul (Num n1) e2')
                           _        -> Nothing
step (Mul e1 e2) = case step e1 of
                      Just e1' -> Just (Mul e1' e2)
                      _        -> Nothing
step (And BTrue e2) = Just e2 
step (And BFalse _) = Just BFalse 
step (And e1 e2) = case step e1 of 
                     Just e1' -> Just (And e1' e2)
                     _        -> Nothing
step (Or BTrue _) = Just BTrue
step (Or BFalse e2) = Just e2
step (Or e1 e2) = case step e1 of 
                    Just e1' -> Just (Or e1' e2)
                    _        -> Nothing
step (Gt (Num n1) (Num n2)) = if (n1 > n2) then 
                                Just BTrue 
                              else 
                                Just BFalse
step (Gt (Num n1) e2) = case step e2 of
                          Just e2' -> Just (Gt (Num n1) e2')
                          _        -> Nothing
step (Gt e1 e2) = case step e1 of
                    Just e1' -> Just (Gt e1' e2)
                    _        -> Nothing
step (Gte (Num n1) (Num n2)) = if (n1 >= n2) then 
                                 Just BTrue 
                               else 
                                 Just BFalse
step (Gte (Num n1) e2) = case step e2 of
                            Just e2' -> Just (Gte (Num n1) e2')
                            _        -> Nothing
step (Gte e1 e2) = case step e1 of
                      Just e1' -> Just (Gte e1' e2)
                      _        -> Nothing
step (Not BTrue) = Just BFalse
step (Not BFalse) = Just BTrue
step (Not e) = case step e of 
                 Just e' -> Just (Not e')
                 _       -> Nothing
step (RetornaP (Pair e1 e2)) = Just e1
step (RetornaS (Pair e1 e2)) = Just e2
step (Pair e1 e2 ) = case (step e1) of
                        Just e' -> case (step e2) of 
                            Just e2'-> Just (Pair e' e2')
                            Nothing -> Nothing
                        Nothing -> Nothing
step (If BTrue e1 _) = Just e1 
step (If BFalse _ e2) = Just e2 
step (If e e1 e2) = case step e of 
                      Just e' -> Just (If e' e1 e2)
                      _       -> Nothing
step (App e1@(Lam x t b) e2) | isvalue e2 = Just (subst x e2 b)
                             | otherwise = case step e2 of 
                                             Just e2' -> Just (App e1 e2')
                                             _        -> Nothing 
step (App e1 e2) = case step e1 of 
                     Just e1' -> Just (App e1' e2)
                     _        -> Nothing
step (Paren e) = Just e
step (Eq e1 e2) | isvalue e1 && isvalue e2 = if (e1 == e2) then
                                               Just BTrue 
                                             else 
                                               Just BFalse 
                | isvalue e1 = case step e2 of 
                                 Just e2' -> Just (Eq e1 e2')
                                 _        -> Nothing
                | otherwise = case step e1 of 
                                Just e1' -> Just (Eq e1' e2)
                                _        -> Nothing 
step (Let v e1 e2) = Just (subst v e1 e2)
step e = Just e 

eval :: Expr -> Expr 
eval e | isvalue e = e 
       | otherwise = case step e of 
                       Just e' -> eval e'
                       _       -> error "Interpreter error!"
