module Lib (
    series,
    first,
    length',
    sum',
    take',
    drop',
    reverse'
) where

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

reverse' [] = []
reverse' (x:xs) = reverse' xs ++[x]

addsub x y = (add,sub)
    where add = x + y
          sub = x - y

main = do
    print $ first [1..5]
    print $ length' [1..5]
    print $ sum' [1..5]
    print $ take' 3 [1..5]
    print $ drop' 0 [1..5]
    print $ drop' 3 [1..5]
    print $ reverse' [1..5]
    print $ addsub 5 3