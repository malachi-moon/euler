--find the product of the pythagorean triple such that a+b+c=1000

--answer = take 10 [ (2*p*q, q*q -p*p, q*q + p*p)| p <- [1..], q <- [1..], p <= q]

--take 30 $ map sum [ [2*p*q, q*q -p*p, q*q + p*p]| p <- [1..], q <- [1..], p <= q]

--take 10 $ [(a,b,c) | a<-[1..500], b<-[1..500], c<-[1..500], a^2 +b^2 ==c^2, a<b, b<c]
--answer= map sum [[a,b,c] | a<-[1..500], b<-[1..500], c<-[1..500], a^2 +b^2 ==c^2, a<b, b<c, a+b+c=1000]

--answer = take 1000 $ map (\(x,y,z) -> x + y + z)[(a,b,c) | a <- [1..500], b <- [1..500], c <- [1..1000], a^2 + b^2 == c^2, a <= b, b < c]

answer=  map (\(x,y,z) -> x*y*z) $ filter (\(x,y,z) -> (x+y+z) == 1000) [ (2*p*q , q*q -p*p, q*q + p*p) | p<- [1..100], q<- [1..100], p<=q]
