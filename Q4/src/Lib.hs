-- Define a function nextPerfect :: Integer -> Integer such that for each positive integer
-- n, nextPerfect n returns the least perfect number m > n.

nextPerfect :: Integer -> Integer
nextPerfect n = head [x | x <- [n+1..], isPerfect x]

isPerfect :: Integer -> Bool
isPerfect n = n == sum (properDivisors n)

properDivisors :: Integer -> [Integer]
properDivisors n = [x | x <- [1..n-1], n `mod` x == 0]

--Write nextPerfect <number> in the terminal to see the result.