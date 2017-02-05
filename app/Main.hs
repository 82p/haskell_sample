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

--rot13
--add and loop in max number
addloop num add _max 
    | (num + add) >= _max = num + add - _max
    | otherwise = num + add
--base char code for a-Z
base ch
    | (ord ch) > (ord 'Z') =  (ord 'a')
    | otherwise = ord 'A'
--ROT13 for charactor z-Z
rot13ch ch = chr code
    where code = (addloop old 13 26) + baseChar
          old = ord ch - baseChar
          baseChar = base ch

--ROT13 function
rot13 [] = []
rot13 (x:xs) = (rot13ch x ): rot13 xs


qsort []     = []
qsort (n:xs) = qsort lt ++ [n] ++ qsort gteq
    where
        lt   = [x | x <- xs, x <  n]
        gteq = [x | x <- xs, x >= n]


main = do
    print $ qsort [4, 6, 9, 8, 3, 5, 1, 7, 2]
    print $ series 5
    print $ ord 'A'
    print $ ord 'z'
    print $ ord 'Z'
    print $ chr 65
    print $ chr 78
    print $ chr 90
    print $ addloop 10 10 20
    print $ rot13ch 'A'
    print $ rot13ch (rot13ch 'A')
    print $ rot13ch 'a'
    print $ rot13 "HelloHaskell"
    print $ rot13 (rot13 "HelloHaskell")
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