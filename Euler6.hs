sumSq :: Int -> Int
sumSq n = sum $ map (^2) [1..n]

sqSum :: Int -> Int
sqSum n = (^2) $ sum [1..n]

dif :: Int -> Int
dif n = (sqSum n)
	    -(sumSq n)
		
answer :: Int
answer = dif 100

answer1 =  ((^2) $ sum [1..100])- (sum $ map (^2)[1..100])