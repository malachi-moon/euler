import Data.Char

digitSum :: Integer -> Int
digitSum = sum . map digitToInt . show

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)
