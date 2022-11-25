-- Define a function isPerfect :: Integer -> Bool that checks if the given input (a positive
-- integer) is a perfect number. A positive integer is perfect if it is the sum of all its proper
-- divisors.

isPerfect :: Integer -> Bool
isPerfect n = n == sum (properDivisors n)
properDivisors :: Integer -> [Integer]
properDivisors n = [x | x <- [1..n-1], n `mod` x == 0]

--Write isPerfect <number> in the terminal to see the result.