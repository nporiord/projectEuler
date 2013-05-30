module Main
( main
) where 

import Test.HUnit
import Euler

-- Question 4 - Palindromes
test4_1 = TestCase ( assertEqual "4_1" 10201 (Euler.p4 102))
test4_2 = TestCase ( assertEqual "4_2" 906609 (Euler.p4 999))

-- Question 3 -
test3_1 = TestCase ( assertEqual "3_1" [1,2,3,5,7] (Euler.p3_sieve 2 10 [1..10]))
test3_2 = TestCase ( assertEqual "3_2" [1,2,3,5,7,11,13,17,19] (Euler.p3_sieve 2 100000 [1..100000]))

-- Question 2 - 
test2_1 = TestCase ( assertEqual "2_1" 10 (Euler.p2 10))
test2_2 = TestCase ( assertEqual "2_2" 44 (Euler.p2 100))
test2_3 = TestCase ( assertEqual "2_1" 798 (Euler.p2 1000))
test2_4 = TestCase ( assertEqual "2_1" 3382 (Euler.p2 10000))
test2_5 = TestCase ( assertEqual "2_1" 60696 (Euler.p2 100000))
test2_6 = TestCase ( assertEqual "2_1" 1089154 (Euler.p2 1000000))
test2_7 = TestCase ( assertEqual "2_1" 4613732 (Euler.p2 4000000))

-- Question 1 - 
test1_2 = TestCase ( assertEqual "1_2" 23 (Euler.p1 10))
test1_3 = TestCase ( assertEqual "1_3" 78 (Euler.p1 20))
test1_4 = TestCase ( assertEqual "1_4" 195 (Euler.p1 30))
test1_1 = TestCase ( assertEqual "1_1" 2318 (Euler.p1 100))
test1_5 = TestCase ( assertEqual "1_5" 233168 (Euler.p1 1000))


tests = TestList [
	  TestLabel "test1_1" test1_1 
	, TestLabel "test1_2" test1_2
	, TestLabel "test1_3" test1_3
	, TestLabel "test1_3" test1_4
	, TestLabel "test1_5" test1_5
	, TestLabel "test2_1" test2_1
	, TestLabel "test2_2" test2_2
	, TestLabel "test2_3" test2_3
	, TestLabel "test2_4" test2_4
	, TestLabel "test2_5" test2_5
	, TestLabel "test2_6" test2_6
	, TestLabel "test2_7" test2_7
	, TestLabel "test3_1" test3_1
	, TestLabel "test3_2" test3_2
	, TestLabel "test4_1" test4_1
	, TestLabel "test4_2" test4_2
	]

main :: IO Counts
main = runTestTT tests
