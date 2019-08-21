isDiv :: Int -> Int -> Bool
isDiv k n = sum (zipWith mod (replicate k n) [1..k]) ==0

--head $ filter (isDiv 10) [1..]
