import Data.Char


f1 :: [Char] -> [Char]
f1 [] = []
f1 (a:[]) = []
f1 (x:y:xs)
    |isDigit x && not (isDigit (y)) = x: (repete(charToNumber x) y) ++ f1 (xs)
    |otherwise = x:f1(y:xs)

repete :: [Int] -> [Char] -> String
repete 0 _ = []
repete x c = c: repete(x-1) c

charToNumber :: Char -> Int
charToNumber c = ord (c) - ord ('0')


merda :: [a] -> [a]
merda [] = []
merda (x:xs) = merda[xs] ++ [x]

stringToNumber :: String -> Int
stringToNumber [] = 0
stringToNumber (a:x) = (charToNumber(a)) + (stringToNUmber x)*10