--three digit numbers tdn
answer = maximum [x | y<-[100..999], z<-[y..999], let x=y*z, let word=show x, word==reverse word]
--finale = print $ answer

--how do we save the value of y and z? within "answer"?

--tdn = reverse [100..999]
--three variables: x (the product), y and z (factors)
--restrict y <= z
--generate list of xs that are palindromes
--find maximum of xs



--isPalindrome :: Int -> Bool

--build from empty list:
--isPalindrome [] = False
--isPalindrome [a, b] = a==b

--