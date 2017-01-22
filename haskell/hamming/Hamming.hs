module Hamming (distance) where
import Control.Applicative

distance [] []  = Just 0
distance (x:s1) (y:s2) = (+) <$> Just (if x == y then 0 else 1) <*> distance s1 s2
distance _ _ = Nothing