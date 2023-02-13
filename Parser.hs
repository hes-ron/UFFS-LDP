{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,358) ([49184,59545,256,0,0,0,49152,13311,465,0,0,0,0,128,41575,3,0,0,2048,0,52737,1860,28680,14886,32832,53555,513,35228,14,1024,0,0,1024,0,0,0,0,0,0,63488,26239,62,16384,0,49150,3721,0,0,128,41575,1027,4920,8221,39360,232,52737,1860,28680,14886,32832,53555,513,35228,4110,19680,116,0,0,0,0,0,0,16384,0,0,3,0,29,0,224,0,1856,0,128,41575,3,53248,0,0,0,52737,1860,28680,14886,65472,53555,65029,39327,14,8192,0,0,26,0,0,0,0,65280,17647,2055,9840,58,32768,32,39938,3721,0,0,128,41575,3,0,0,0,0,0,52,0,416,8064,0,0,4096,0,32768,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'*'","'-'","\"&&\"","\"||\"","\"==\"","\">\"","\">=\"","true","false","if","then","else","var","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","'!'","','","'tp'","'ts'","let","'='","in","%eof"]
        bit_start = st * 35
        bit_end = (st + 1) * 35
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..34]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (15) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (17) = happyShift action_6
action_0 (20) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (24) = happyShift action_9
action_0 (28) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (31) = happyShift action_12
action_0 (32) = happyShift action_13
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_22
action_3 (8) = happyShift action_23
action_3 (9) = happyShift action_24
action_3 (10) = happyShift action_25
action_3 (11) = happyShift action_26
action_3 (12) = happyShift action_27
action_3 (13) = happyShift action_28
action_3 (14) = happyShift action_29
action_3 (15) = happyShift action_4
action_3 (16) = happyShift action_5
action_3 (17) = happyShift action_6
action_3 (20) = happyShift action_7
action_3 (21) = happyShift action_8
action_3 (24) = happyShift action_9
action_3 (28) = happyShift action_10
action_3 (30) = happyShift action_11
action_3 (31) = happyShift action_12
action_3 (32) = happyShift action_13
action_3 (35) = happyAccept
action_3 (4) = happyGoto action_21
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (15) = happyShift action_4
action_6 (16) = happyShift action_5
action_6 (17) = happyShift action_6
action_6 (20) = happyShift action_7
action_6 (21) = happyShift action_8
action_6 (24) = happyShift action_9
action_6 (28) = happyShift action_10
action_6 (30) = happyShift action_11
action_6 (31) = happyShift action_12
action_6 (32) = happyShift action_13
action_6 (4) = happyGoto action_20
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_2

action_8 (20) = happyShift action_19
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (15) = happyShift action_4
action_9 (16) = happyShift action_5
action_9 (17) = happyShift action_6
action_9 (20) = happyShift action_7
action_9 (21) = happyShift action_8
action_9 (24) = happyShift action_9
action_9 (28) = happyShift action_10
action_9 (30) = happyShift action_11
action_9 (31) = happyShift action_12
action_9 (32) = happyShift action_13
action_9 (4) = happyGoto action_18
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (15) = happyShift action_4
action_10 (16) = happyShift action_5
action_10 (17) = happyShift action_6
action_10 (20) = happyShift action_7
action_10 (21) = happyShift action_8
action_10 (24) = happyShift action_9
action_10 (28) = happyShift action_10
action_10 (30) = happyShift action_11
action_10 (31) = happyShift action_12
action_10 (32) = happyShift action_13
action_10 (4) = happyGoto action_17
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (15) = happyShift action_4
action_11 (16) = happyShift action_5
action_11 (17) = happyShift action_6
action_11 (20) = happyShift action_7
action_11 (21) = happyShift action_8
action_11 (24) = happyShift action_9
action_11 (28) = happyShift action_10
action_11 (30) = happyShift action_11
action_11 (31) = happyShift action_12
action_11 (32) = happyShift action_13
action_11 (4) = happyGoto action_16
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (15) = happyShift action_4
action_12 (16) = happyShift action_5
action_12 (17) = happyShift action_6
action_12 (20) = happyShift action_7
action_12 (21) = happyShift action_8
action_12 (24) = happyShift action_9
action_12 (28) = happyShift action_10
action_12 (30) = happyShift action_11
action_12 (31) = happyShift action_12
action_12 (32) = happyShift action_13
action_12 (4) = happyGoto action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (20) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (33) = happyShift action_42
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_22
action_15 (8) = happyShift action_23
action_15 (9) = happyShift action_24
action_15 (10) = happyShift action_25
action_15 (11) = happyShift action_26
action_15 (12) = happyShift action_27
action_15 (13) = happyShift action_28
action_15 (14) = happyShift action_29
action_15 (15) = happyShift action_4
action_15 (16) = happyShift action_5
action_15 (17) = happyShift action_6
action_15 (20) = happyShift action_7
action_15 (21) = happyShift action_8
action_15 (24) = happyShift action_9
action_15 (28) = happyShift action_10
action_15 (30) = happyShift action_11
action_15 (31) = happyShift action_12
action_15 (32) = happyShift action_13
action_15 (4) = happyGoto action_21
action_15 _ = happyReduce_20

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_22
action_16 (8) = happyShift action_23
action_16 (9) = happyShift action_24
action_16 (10) = happyShift action_25
action_16 (11) = happyShift action_26
action_16 (12) = happyShift action_27
action_16 (13) = happyShift action_28
action_16 (14) = happyShift action_29
action_16 (15) = happyShift action_4
action_16 (16) = happyShift action_5
action_16 (17) = happyShift action_6
action_16 (20) = happyShift action_7
action_16 (21) = happyShift action_8
action_16 (24) = happyShift action_9
action_16 (28) = happyShift action_10
action_16 (30) = happyShift action_11
action_16 (31) = happyShift action_12
action_16 (32) = happyShift action_13
action_16 (4) = happyGoto action_21
action_16 _ = happyReduce_19

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_22
action_17 (8) = happyShift action_23
action_17 (9) = happyShift action_24
action_17 (10) = happyShift action_25
action_17 (11) = happyShift action_26
action_17 (12) = happyShift action_27
action_17 (13) = happyShift action_28
action_17 (14) = happyShift action_29
action_17 (15) = happyShift action_4
action_17 (16) = happyShift action_5
action_17 (17) = happyShift action_6
action_17 (20) = happyShift action_7
action_17 (21) = happyShift action_8
action_17 (24) = happyShift action_9
action_17 (28) = happyShift action_10
action_17 (30) = happyShift action_11
action_17 (31) = happyShift action_12
action_17 (32) = happyShift action_13
action_17 (4) = happyGoto action_21
action_17 _ = happyReduce_17

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_22
action_18 (8) = happyShift action_23
action_18 (9) = happyShift action_24
action_18 (10) = happyShift action_25
action_18 (11) = happyShift action_26
action_18 (12) = happyShift action_27
action_18 (13) = happyShift action_28
action_18 (14) = happyShift action_29
action_18 (15) = happyShift action_4
action_18 (16) = happyShift action_5
action_18 (17) = happyShift action_6
action_18 (20) = happyShift action_7
action_18 (21) = happyShift action_8
action_18 (24) = happyShift action_9
action_18 (25) = happyShift action_40
action_18 (28) = happyShift action_10
action_18 (29) = happyShift action_41
action_18 (30) = happyShift action_11
action_18 (31) = happyShift action_12
action_18 (32) = happyShift action_13
action_18 (4) = happyGoto action_21
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (22) = happyShift action_39
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_22
action_20 (8) = happyShift action_23
action_20 (9) = happyShift action_24
action_20 (10) = happyShift action_25
action_20 (11) = happyShift action_26
action_20 (12) = happyShift action_27
action_20 (13) = happyShift action_28
action_20 (14) = happyShift action_29
action_20 (15) = happyShift action_4
action_20 (16) = happyShift action_5
action_20 (17) = happyShift action_6
action_20 (18) = happyShift action_38
action_20 (20) = happyShift action_7
action_20 (21) = happyShift action_8
action_20 (24) = happyShift action_9
action_20 (28) = happyShift action_10
action_20 (30) = happyShift action_11
action_20 (31) = happyShift action_12
action_20 (32) = happyShift action_13
action_20 (4) = happyGoto action_21
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_22
action_21 (8) = happyShift action_23
action_21 (9) = happyShift action_24
action_21 (10) = happyShift action_25
action_21 (11) = happyShift action_26
action_21 (12) = happyShift action_27
action_21 (13) = happyShift action_28
action_21 (14) = happyShift action_29
action_21 (15) = happyShift action_4
action_21 (16) = happyShift action_5
action_21 (17) = happyShift action_6
action_21 (20) = happyShift action_7
action_21 (21) = happyShift action_8
action_21 (24) = happyShift action_9
action_21 (28) = happyShift action_10
action_21 (30) = happyShift action_11
action_21 (31) = happyShift action_12
action_21 (32) = happyShift action_13
action_21 (4) = happyGoto action_21
action_21 _ = happyReduce_14

action_22 (6) = happyShift action_2
action_22 (15) = happyShift action_4
action_22 (16) = happyShift action_5
action_22 (17) = happyShift action_6
action_22 (20) = happyShift action_7
action_22 (21) = happyShift action_8
action_22 (24) = happyShift action_9
action_22 (28) = happyShift action_10
action_22 (30) = happyShift action_11
action_22 (31) = happyShift action_12
action_22 (32) = happyShift action_13
action_22 (4) = happyGoto action_37
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (15) = happyShift action_4
action_23 (16) = happyShift action_5
action_23 (17) = happyShift action_6
action_23 (20) = happyShift action_7
action_23 (21) = happyShift action_8
action_23 (24) = happyShift action_9
action_23 (28) = happyShift action_10
action_23 (30) = happyShift action_11
action_23 (31) = happyShift action_12
action_23 (32) = happyShift action_13
action_23 (4) = happyGoto action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (15) = happyShift action_4
action_24 (16) = happyShift action_5
action_24 (17) = happyShift action_6
action_24 (20) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (24) = happyShift action_9
action_24 (28) = happyShift action_10
action_24 (30) = happyShift action_11
action_24 (31) = happyShift action_12
action_24 (32) = happyShift action_13
action_24 (4) = happyGoto action_35
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (15) = happyShift action_4
action_25 (16) = happyShift action_5
action_25 (17) = happyShift action_6
action_25 (20) = happyShift action_7
action_25 (21) = happyShift action_8
action_25 (24) = happyShift action_9
action_25 (28) = happyShift action_10
action_25 (30) = happyShift action_11
action_25 (31) = happyShift action_12
action_25 (32) = happyShift action_13
action_25 (4) = happyGoto action_34
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (15) = happyShift action_4
action_26 (16) = happyShift action_5
action_26 (17) = happyShift action_6
action_26 (20) = happyShift action_7
action_26 (21) = happyShift action_8
action_26 (24) = happyShift action_9
action_26 (28) = happyShift action_10
action_26 (30) = happyShift action_11
action_26 (31) = happyShift action_12
action_26 (32) = happyShift action_13
action_26 (4) = happyGoto action_33
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (15) = happyShift action_4
action_27 (16) = happyShift action_5
action_27 (17) = happyShift action_6
action_27 (20) = happyShift action_7
action_27 (21) = happyShift action_8
action_27 (24) = happyShift action_9
action_27 (28) = happyShift action_10
action_27 (30) = happyShift action_11
action_27 (31) = happyShift action_12
action_27 (32) = happyShift action_13
action_27 (4) = happyGoto action_32
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (15) = happyShift action_4
action_28 (16) = happyShift action_5
action_28 (17) = happyShift action_6
action_28 (20) = happyShift action_7
action_28 (21) = happyShift action_8
action_28 (24) = happyShift action_9
action_28 (28) = happyShift action_10
action_28 (30) = happyShift action_11
action_28 (31) = happyShift action_12
action_28 (32) = happyShift action_13
action_28 (4) = happyGoto action_31
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (15) = happyShift action_4
action_29 (16) = happyShift action_5
action_29 (17) = happyShift action_6
action_29 (20) = happyShift action_7
action_29 (21) = happyShift action_8
action_29 (24) = happyShift action_9
action_29 (28) = happyShift action_10
action_29 (30) = happyShift action_11
action_29 (31) = happyShift action_12
action_29 (32) = happyShift action_13
action_29 (4) = happyGoto action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_22
action_30 (8) = happyShift action_23
action_30 (9) = happyShift action_24
action_30 (10) = happyShift action_25
action_30 (11) = happyShift action_26
action_30 (12) = happyShift action_27
action_30 (13) = happyShift action_28
action_30 (14) = happyShift action_29
action_30 (15) = happyShift action_4
action_30 (16) = happyShift action_5
action_30 (17) = happyShift action_6
action_30 (20) = happyShift action_7
action_30 (21) = happyShift action_8
action_30 (24) = happyShift action_9
action_30 (28) = happyShift action_10
action_30 (30) = happyShift action_11
action_30 (31) = happyShift action_12
action_30 (32) = happyShift action_13
action_30 (4) = happyGoto action_21
action_30 _ = happyReduce_11

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_22
action_31 (8) = happyShift action_23
action_31 (9) = happyShift action_24
action_31 (10) = happyShift action_25
action_31 (11) = happyShift action_26
action_31 (12) = happyShift action_27
action_31 (13) = happyShift action_28
action_31 (14) = happyShift action_29
action_31 (15) = happyShift action_4
action_31 (16) = happyShift action_5
action_31 (17) = happyShift action_6
action_31 (20) = happyShift action_7
action_31 (21) = happyShift action_8
action_31 (24) = happyShift action_9
action_31 (28) = happyShift action_10
action_31 (30) = happyShift action_11
action_31 (31) = happyShift action_12
action_31 (32) = happyShift action_13
action_31 (4) = happyGoto action_21
action_31 _ = happyReduce_10

action_32 (6) = happyShift action_2
action_32 (13) = happyShift action_28
action_32 (14) = happyShift action_29
action_32 (15) = happyShift action_4
action_32 (16) = happyShift action_5
action_32 (20) = happyShift action_7
action_32 (21) = happyShift action_8
action_32 (24) = happyShift action_9
action_32 (28) = happyShift action_10
action_32 (30) = happyShift action_11
action_32 (31) = happyShift action_12
action_32 (32) = happyShift action_13
action_32 (4) = happyGoto action_21
action_32 _ = happyReduce_16

action_33 (6) = happyShift action_2
action_33 (12) = happyShift action_27
action_33 (13) = happyShift action_28
action_33 (14) = happyShift action_29
action_33 (15) = happyShift action_4
action_33 (16) = happyShift action_5
action_33 (20) = happyShift action_7
action_33 (21) = happyShift action_8
action_33 (24) = happyShift action_9
action_33 (28) = happyShift action_10
action_33 (30) = happyShift action_11
action_33 (31) = happyShift action_12
action_33 (32) = happyShift action_13
action_33 (4) = happyGoto action_21
action_33 _ = happyReduce_9

action_34 (6) = happyShift action_2
action_34 (11) = happyShift action_26
action_34 (12) = happyShift action_27
action_34 (13) = happyShift action_28
action_34 (14) = happyShift action_29
action_34 (15) = happyShift action_4
action_34 (16) = happyShift action_5
action_34 (20) = happyShift action_7
action_34 (21) = happyShift action_8
action_34 (24) = happyShift action_9
action_34 (28) = happyShift action_10
action_34 (30) = happyShift action_11
action_34 (31) = happyShift action_12
action_34 (32) = happyShift action_13
action_34 (4) = happyGoto action_21
action_34 _ = happyReduce_8

action_35 (6) = happyShift action_2
action_35 (8) = happyShift action_23
action_35 (10) = happyShift action_25
action_35 (11) = happyShift action_26
action_35 (12) = happyShift action_27
action_35 (13) = happyShift action_28
action_35 (14) = happyShift action_29
action_35 (15) = happyShift action_4
action_35 (16) = happyShift action_5
action_35 (20) = happyShift action_7
action_35 (21) = happyShift action_8
action_35 (24) = happyShift action_9
action_35 (28) = happyShift action_10
action_35 (30) = happyShift action_11
action_35 (31) = happyShift action_12
action_35 (32) = happyShift action_13
action_35 (4) = happyGoto action_21
action_35 _ = happyReduce_7

action_36 (6) = happyShift action_2
action_36 (10) = happyShift action_25
action_36 (11) = happyShift action_26
action_36 (12) = happyShift action_27
action_36 (13) = happyShift action_28
action_36 (14) = happyShift action_29
action_36 (15) = happyShift action_4
action_36 (16) = happyShift action_5
action_36 (20) = happyShift action_7
action_36 (21) = happyShift action_8
action_36 (24) = happyShift action_9
action_36 (28) = happyShift action_10
action_36 (30) = happyShift action_11
action_36 (31) = happyShift action_12
action_36 (32) = happyShift action_13
action_36 (4) = happyGoto action_21
action_36 _ = happyReduce_6

action_37 (6) = happyShift action_2
action_37 (8) = happyShift action_23
action_37 (10) = happyShift action_25
action_37 (11) = happyShift action_26
action_37 (12) = happyShift action_27
action_37 (13) = happyShift action_28
action_37 (14) = happyShift action_29
action_37 (15) = happyShift action_4
action_37 (16) = happyShift action_5
action_37 (20) = happyShift action_7
action_37 (21) = happyShift action_8
action_37 (24) = happyShift action_9
action_37 (28) = happyShift action_10
action_37 (30) = happyShift action_11
action_37 (31) = happyShift action_12
action_37 (32) = happyShift action_13
action_37 (4) = happyGoto action_21
action_37 _ = happyReduce_5

action_38 (6) = happyShift action_2
action_38 (15) = happyShift action_4
action_38 (16) = happyShift action_5
action_38 (17) = happyShift action_6
action_38 (20) = happyShift action_7
action_38 (21) = happyShift action_8
action_38 (24) = happyShift action_9
action_38 (28) = happyShift action_10
action_38 (30) = happyShift action_11
action_38 (31) = happyShift action_12
action_38 (32) = happyShift action_13
action_38 (4) = happyGoto action_49
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (24) = happyShift action_46
action_39 (26) = happyShift action_47
action_39 (27) = happyShift action_48
action_39 (5) = happyGoto action_45
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_15

action_41 (6) = happyShift action_2
action_41 (15) = happyShift action_4
action_41 (16) = happyShift action_5
action_41 (17) = happyShift action_6
action_41 (20) = happyShift action_7
action_41 (21) = happyShift action_8
action_41 (24) = happyShift action_9
action_41 (28) = happyShift action_10
action_41 (30) = happyShift action_11
action_41 (31) = happyShift action_12
action_41 (32) = happyShift action_13
action_41 (4) = happyGoto action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (15) = happyShift action_4
action_42 (16) = happyShift action_5
action_42 (17) = happyShift action_6
action_42 (20) = happyShift action_7
action_42 (21) = happyShift action_8
action_42 (24) = happyShift action_9
action_42 (28) = happyShift action_10
action_42 (30) = happyShift action_11
action_42 (31) = happyShift action_12
action_42 (32) = happyShift action_13
action_42 (4) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_22
action_43 (8) = happyShift action_23
action_43 (9) = happyShift action_24
action_43 (10) = happyShift action_25
action_43 (11) = happyShift action_26
action_43 (12) = happyShift action_27
action_43 (13) = happyShift action_28
action_43 (14) = happyShift action_29
action_43 (15) = happyShift action_4
action_43 (16) = happyShift action_5
action_43 (17) = happyShift action_6
action_43 (20) = happyShift action_7
action_43 (21) = happyShift action_8
action_43 (24) = happyShift action_9
action_43 (28) = happyShift action_10
action_43 (30) = happyShift action_11
action_43 (31) = happyShift action_12
action_43 (32) = happyShift action_13
action_43 (34) = happyShift action_54
action_43 (4) = happyGoto action_21
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_22
action_44 (8) = happyShift action_23
action_44 (9) = happyShift action_24
action_44 (10) = happyShift action_25
action_44 (11) = happyShift action_26
action_44 (12) = happyShift action_27
action_44 (13) = happyShift action_28
action_44 (14) = happyShift action_29
action_44 (15) = happyShift action_4
action_44 (16) = happyShift action_5
action_44 (17) = happyShift action_6
action_44 (20) = happyShift action_7
action_44 (21) = happyShift action_8
action_44 (24) = happyShift action_9
action_44 (25) = happyShift action_53
action_44 (28) = happyShift action_10
action_44 (30) = happyShift action_11
action_44 (31) = happyShift action_12
action_44 (32) = happyShift action_13
action_44 (4) = happyGoto action_21
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (23) = happyShift action_52
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (24) = happyShift action_46
action_46 (26) = happyShift action_47
action_46 (27) = happyShift action_48
action_46 (5) = happyGoto action_51
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_22

action_48 _ = happyReduce_23

action_49 (6) = happyShift action_2
action_49 (7) = happyShift action_22
action_49 (8) = happyShift action_23
action_49 (9) = happyShift action_24
action_49 (10) = happyShift action_25
action_49 (11) = happyShift action_26
action_49 (12) = happyShift action_27
action_49 (13) = happyShift action_28
action_49 (14) = happyShift action_29
action_49 (15) = happyShift action_4
action_49 (16) = happyShift action_5
action_49 (17) = happyShift action_6
action_49 (19) = happyShift action_50
action_49 (20) = happyShift action_7
action_49 (21) = happyShift action_8
action_49 (24) = happyShift action_9
action_49 (28) = happyShift action_10
action_49 (30) = happyShift action_11
action_49 (31) = happyShift action_12
action_49 (32) = happyShift action_13
action_49 (4) = happyGoto action_21
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (15) = happyShift action_4
action_50 (16) = happyShift action_5
action_50 (17) = happyShift action_6
action_50 (20) = happyShift action_7
action_50 (21) = happyShift action_8
action_50 (24) = happyShift action_9
action_50 (28) = happyShift action_10
action_50 (30) = happyShift action_11
action_50 (31) = happyShift action_12
action_50 (32) = happyShift action_13
action_50 (4) = happyGoto action_59
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (23) = happyShift action_57
action_51 (29) = happyShift action_58
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_2
action_52 (15) = happyShift action_4
action_52 (16) = happyShift action_5
action_52 (17) = happyShift action_6
action_52 (20) = happyShift action_7
action_52 (21) = happyShift action_8
action_52 (24) = happyShift action_9
action_52 (28) = happyShift action_10
action_52 (30) = happyShift action_11
action_52 (31) = happyShift action_12
action_52 (32) = happyShift action_13
action_52 (4) = happyGoto action_56
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_18

action_54 (6) = happyShift action_2
action_54 (15) = happyShift action_4
action_54 (16) = happyShift action_5
action_54 (17) = happyShift action_6
action_54 (20) = happyShift action_7
action_54 (21) = happyShift action_8
action_54 (24) = happyShift action_9
action_54 (28) = happyShift action_10
action_54 (30) = happyShift action_11
action_54 (31) = happyShift action_12
action_54 (32) = happyShift action_13
action_54 (4) = happyGoto action_55
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_22
action_55 (8) = happyShift action_23
action_55 (9) = happyShift action_24
action_55 (10) = happyShift action_25
action_55 (11) = happyShift action_26
action_55 (12) = happyShift action_27
action_55 (13) = happyShift action_28
action_55 (14) = happyShift action_29
action_55 (15) = happyShift action_4
action_55 (16) = happyShift action_5
action_55 (17) = happyShift action_6
action_55 (20) = happyShift action_7
action_55 (21) = happyShift action_8
action_55 (24) = happyShift action_9
action_55 (28) = happyShift action_10
action_55 (30) = happyShift action_11
action_55 (31) = happyShift action_12
action_55 (32) = happyShift action_13
action_55 (4) = happyGoto action_21
action_55 _ = happyReduce_21

action_56 (6) = happyShift action_2
action_56 (7) = happyShift action_22
action_56 (8) = happyShift action_23
action_56 (9) = happyShift action_24
action_56 (10) = happyShift action_25
action_56 (11) = happyShift action_26
action_56 (12) = happyShift action_27
action_56 (13) = happyShift action_28
action_56 (14) = happyShift action_29
action_56 (15) = happyShift action_4
action_56 (16) = happyShift action_5
action_56 (17) = happyShift action_6
action_56 (20) = happyShift action_7
action_56 (21) = happyShift action_8
action_56 (24) = happyShift action_9
action_56 (28) = happyShift action_10
action_56 (30) = happyShift action_11
action_56 (31) = happyShift action_12
action_56 (32) = happyShift action_13
action_56 (4) = happyGoto action_21
action_56 _ = happyReduce_13

action_57 (24) = happyShift action_46
action_57 (26) = happyShift action_47
action_57 (27) = happyShift action_48
action_57 (5) = happyGoto action_61
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (24) = happyShift action_46
action_58 (26) = happyShift action_47
action_58 (27) = happyShift action_48
action_58 (5) = happyGoto action_60
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (6) = happyShift action_2
action_59 (7) = happyShift action_22
action_59 (8) = happyShift action_23
action_59 (9) = happyShift action_24
action_59 (10) = happyShift action_25
action_59 (11) = happyShift action_26
action_59 (12) = happyShift action_27
action_59 (13) = happyShift action_28
action_59 (14) = happyShift action_29
action_59 (15) = happyShift action_4
action_59 (16) = happyShift action_5
action_59 (17) = happyFail []
action_59 (20) = happyShift action_7
action_59 (21) = happyShift action_8
action_59 (24) = happyShift action_9
action_59 (28) = happyShift action_10
action_59 (30) = happyShift action_11
action_59 (31) = happyShift action_12
action_59 (32) = happyShift action_13
action_59 (4) = happyGoto action_21
action_59 _ = happyReduce_12

action_60 (25) = happyShift action_63
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (25) = happyShift action_62
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_24

action_63 _ = happyReduce_25

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gte happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 5 4 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_2  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (RetornaP happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (RetornaS happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happyReduce 6 4 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_24 = happyReduce 5 5 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 5 5 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TPair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenMul -> cont 8;
	TokenSub -> cont 9;
	TokenAnd -> cont 10;
	TokenOr -> cont 11;
	TokenEq -> cont 12;
	TokenGt -> cont 13;
	TokenGte -> cont 14;
	TokenTrue -> cont 15;
	TokenFalse -> cont 16;
	TokenIf -> cont 17;
	TokenThen -> cont 18;
	TokenElse -> cont 19;
	TokenVar happy_dollar_dollar -> cont 20;
	TokenLam -> cont 21;
	TokenColon -> cont 22;
	TokenArrow -> cont 23;
	TokenLParen -> cont 24;
	TokenRParen -> cont 25;
	TokenBoolean -> cont 26;
	TokenNumber -> cont 27;
	TokenNot -> cont 28;
	TokenV -> cont 29;
	TokenPrimeiro -> cont 30;
	TokenSegundo -> cont 31;
	TokenLet -> cont 32;
	TokenEqual -> cont 33;
	TokenIn -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
