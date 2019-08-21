collatz :: Integer
collatz n
	| mod n 2 == 0 = div n 2
	| otherwise = n*3 + 1

--collatzList :: (Integral a) -> [a]
collatzList n
	| n < 1 = error "negative error"
	| n == 1 = [n]
	| otherwise = n:collatzList (collatz n)

collatzLists n = map collatzList [1..n]

max' :: [[a]] -> [a]
max' = foldr1 (\ x acc -> if length (x) > length (acc) then  x else  acc)

