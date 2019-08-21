main = putStrLn $ show amicableSum

divs :: Int -> [Int]
divs n = filter (\x -> n `mod` x == 0) [1..(n-1)]

divSum :: Int -> Int
divSum = sum . divs

areAmicable :: (Int, Int) -> Bool
areAmicable (a,b) = divSum a == b
                 && divSum b == a

amicables :: [[Int]]
amicables = [ [a,b] | a <- [1..1000], b <- [1..1000], a < b, areAmicable (a,b)] 

amicableSum :: Int
amicableSum = sum . concat $ amicables
