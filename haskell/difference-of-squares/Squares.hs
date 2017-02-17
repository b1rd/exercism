module Squares (difference, squareOfSums, sumOfSquares) where

difference :: Integral a => a -> a
difference x = squareOfSums x - sumOfSquares x

squareOfSums :: Integral a => a -> a
squareOfSums x = (^2) $ sum [1..x]

sumOfSquares :: Integral a => a -> a
sumOfSquares x = sum $ map (^2) [1..x]
