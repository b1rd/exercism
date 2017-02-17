module SumOfMultiples (sumOfMultiples) where
import Data.List

sumOfMultiples factors limit = sum $ nub $ concat [getMultiples x 1 limit []| x <- factors]

getMultiples x mult limit save 
	| x * mult < limit = getMultiples x (mult + 1) limit (x*mult : save)
	| otherwise = save