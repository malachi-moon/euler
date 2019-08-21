main = print $ answer 500

mods :: Int -> [Int]
mods n = zipWith mod (replicate s n) [1..s]
		where s =  floor $ sqrt (fromIntegral n)

divs :: Int -> Int
divs n = (if s*s == n then (\x -> 2*x-1)
					  else (\x -> 2*x))
					  $ length
					  $ filter (==0)
					  $ mods n
					  where s =  floor $ sqrt (fromIntegral n)

tris :: [Int]
tris = [ sum [1..k] | k <- [1..]]

answer :: Int -> Int
answer n = fst . head $ dropWhile (\(x,y) -> y < n) $ zip tris (map divs tris)