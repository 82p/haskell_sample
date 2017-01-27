--初めての再帰関数
add 1 = 1
add x = x +  add (x - 1)

--リストの操作
-- first (x:_) = x;

--リスト関数の再定義
--length' [] = 0

--sum'

--take'

--drop'

--reverse'

--whereを使ってみる
--addsub x y = (add,sub)

{- ax + by = c と  (p,q)の交点
   -- ax + by = c
   -- ax - by = ap - bq
   の連立方程式の解
-}
--prePoint p q a b c = (x,y)

main = do
 print $ add 5
-- print $ first [1..5]
-- print $ length' [1..5]
-- print $ sum' [1..5]
-- print $ take' 3 [1..5]
-- print $ drop' 0 [1..5]
-- print $ drop' 3 [1..5]
-- print $ reverse' [1..5]
-- print $ addsub 5 3
 
-- letも使ってみる
-- let (add,_) = addsub 5 3
-- print add

-- print $ prePoint 0 0 1 1 2