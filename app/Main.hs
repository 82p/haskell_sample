--初めての再帰関数
add 1 = 1
add x = x +  add (x - 1)

--リストの操作
first (x:_) = x;

--リスト関数の再定義
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' [] = 0
sum' (x:xs) = x + sum' xs

take' 0 (_:_) = []
take' n (x:xs) = x:take' (n-1) xs

drop' 0 l = l
drop' 1 (_:xs) = xs
drop' n (_:xs) = drop' (n-1) xs

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

--whereを使ってみる
addsub x y = (add,sub)
    where add = x + y
          sub = x - y

{- ax + by = c と  (p,q)の交点
   -- ax + by = c
   -- ax - by = ap - bq
   の連立方程式の解
-}
prePoint p q a b c = (x,y)
    where m = a*a + b*b
          x = (a*c + b*b*p - a*b*q) / m
          y = (b*c + a*a*q - a*b*p) / m

main = do
 print $ add 5
 print $ first [1..5]
 print $ length' [1..5]
 print $ sum' [1..5]
 print $ take' 3 [1..5]
 print $ drop' 0 [1..5]
 print $ drop' 3 [1..5]
 print $ reverse' [1..5]
 print $ addsub 5 3
 
 --letも使ってみる
 let (add,_) = addsub 5 3
 print add

 print $ prePoint 0 0 1 1 2