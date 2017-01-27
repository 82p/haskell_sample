--it's first time recursive function
series 1 = 1
series x = x +  series (x - 1)


{--this is comment

TODO LIST
-- haskell list
first (x:_) = x;
--Redefine list functions
length'
sum' 
take' 
drop' 
reverse' 
--use where
addsub x y = (add,sub)
--math practice
A straight line passing through (p,q)
and cross at right angles the line ax + by = c.
Find the intersection of thease lines. 
-- prePoint p q a b c = (x,y)
--}

main = do
 print $ series 5

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