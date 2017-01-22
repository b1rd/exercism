module Bob (responseFor) where

import Data.Char (toUpper, isSpace, isAlphaNum, isAlpha)

responseFor x = 
    let questionWithoutSpaces = removeSpaces x
        questionOnlyLetters = removeSpecialCharacters questionWithoutSpaces
        questionOnlySigns = removeLettersAndNumbers questionWithoutSpaces
    in responseFor' questionOnlyLetters  questionWithoutSpaces questionOnlySigns
    where responseFor' questionOnlyLetters  questionWithoutSpaces questionOnlySigns
                | questionWithoutSpaces == "" || (length questionWithoutSpaces == length questionOnlySigns) = "Fine. Be that way!"
                | map toUpper questionOnlyLetters /= "" && map toUpper questionOnlyLetters == questionOnlyLetters = "Whoa, chill out!"
                | questionWithoutSpaces /= "" && last questionWithoutSpaces == '?' = "Sure."
                | otherwise = "Whatever."

removeSpecialCharacters :: String -> String
removeSpecialCharacters xs = [x | x<-xs , isAlpha x]

removeLettersAndNumbers :: String -> String
removeLettersAndNumbers xs = [x | x<-xs, not (isAlphaNum x) && notElem x ['?']]

removeSpaces :: String -> String
removeSpaces xs = [x | x<-xs, not $ isSpace x]