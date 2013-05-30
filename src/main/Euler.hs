module Euler 
( p1
  , p2
  , p3_sieve
  , p4
  , p4_isPalindrome
) where

import Data.List
import Debug.Trace
 
 
--
--p3 :: Int -> Int
--p3 number = p3_sieve 1 number [1..number]

p3_sieve :: Int -> Int -> [Int] -> [Int]
p3_sieve number limit list 
	| number > limit = list
	| otherwise = p3_sieve (number + 1) limit (filter (\x -> x == number || x `mod` number > 0) list)

	
-- palindrome factors
p4 :: Int -> Int
p4 rangeUpper = maximum [x * y | x <- [rangeUpper,rangeUpper-1..100], y <- [rangeUpper,rangeUpper-1..100], p4_isPalindrome (x * y)]

p4_isPalindrome :: Int -> Bool
p4_isPalindrome number = reverse (show number) == show number

-- Prime numbers etc.
p3 :: Int -> [Int]
p3 limit = p3_primeFactors limit

p3_primeFactors :: Int -> [Int]
p3_primeFactors limit = filter p3_isPrime ([1,2,3,4,5,limit])

p3_isPrime :: Int -> Bool
p3_isPrime factor = True

--Question 2
p2 :: Int -> Int
p2 limit = sumFold (filter (\x -> even x) (p2_fib limit [1,1]))

--Gives you back n Fib numbers.
p2_fib :: Int -> [Int] -> [Int] 
p2_fib m (x:y:xs) 
  | x > m = y:xs
  | otherwise = p2_fib m (x+y:x:y:xs)


-- sum of all numbers < limit that are divisible by 3 and 5
-- 10 -> 3 5 6 9 = 23 
--Question 1
p1 :: Int -> Int
p1 limit = sumFold $ p1_1 limit

p1_1 :: Int -> [Int]
p1_1 limit = ( filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) [1..limit-1])

sumFold :: [Int] -> Int
sumFold = foldl (+) 0 