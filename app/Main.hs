import Data.Char
--it's first time recursive function
series 1 = 1
series x = x +  series (x - 1)

first (x:_) = x;

length' [] = 0
length' (_:xs) = 1 + length' xs

sum' [] = 0
sum' (x:xs) = x + sum' xs

take' 0 (_:_) = []
take' n (x:xs) = x:take (n-1) xs 

drop' 0 l = l
drop' n (_:xs) =drop' (n-1) xs

reverse' (x:xs) = reverse' xs ++[x]

--use where
addsub x y = (add,sub)
    where add = x + y
          sub = x - y

rot13 x = char code
    where code
          | old <= (48 -13) = old + 13
          | otherwise code = old + 13 -48
          old = ord x
          

main = do
    print $ series 5
    print $ ord 'A'
    print $ chr 65
    print rot13 'A'
    print rot13 (rot13 A)

-- print $ first [1..5]
-- print $ length' [1..5]
-- print $ sum' [1..5]
-- print $ take' 3 [1..5]
-- print $ drop' 0 [1..5]
-- print $ drop' 3 [1..5]
-- print $ reverse' [1..5]
-- print $ addsub 5 3
 
-- try let
-- let (add,_) = addsub 5 3
-- print add

-- print $ prePoint 0 0 1 1 2