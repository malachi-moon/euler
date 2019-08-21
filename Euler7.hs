mods :: Int -> [Int]
mods n = zipWith mod (replicate (s-1) n) [2..s]
	where s = floor.sqrt.fromIntegral $ n
	
isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = notElem 0 (mods n)

isPrimeList :: [(Int, Bool)]
isPrimeList = map (\x ->(x, isPrime x)) [1..]

primeList :: [Int]
primeList = map fst (filter (\(x,y) -> y)isPrimeList)

answer :: Int
answer = primeList !! 10000