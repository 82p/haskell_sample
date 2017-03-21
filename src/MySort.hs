module MySort (
    isort,
    bsort,
    badsort
)where
import Data.Char
import Debug.Trace

insert x [] = [x]
insert x (y:ys)
    | x < y     = x:y:ys
    | otherwise = y : insert x ys

isort []     = []
isort (x:xs) = trace dbg1 $ trace dbg2 ret
    where
        ret = insert x xs'
        xs' = isort xs
        dbg1 = "isort " ++ show (x:xs) ++ " = " ++
               "insert " ++ show x ++
               " (isort " ++ show xs ++ ")"
        dbg2 = "insert " ++ show x ++ " " ++ show xs' ++
               " = " ++ show ret

bswap [x] = [x]
bswap (x1:x2:xs)
    | x1 > x2 = x1:bswap(x2:xs) 
    |otherwise = x2:bswap(x1:xs)


bsort [] = []
bsort xs = trace (show small ++ ":" ++ show left) small:(bsort left)
    where
        bs = bswap xs
        l = length xs -1
        small = bs !! l
        left = take l bs

badsort []  = []
badsort [x] = [x]
badsort (x:xs)
    | x < y     = x : badsort (y:ys)
    | otherwise = y : badsort (x:ys)
    where
        (y:ys) = trace (show x ++ ":" ++ show xs) badsort xs

marge [] [] = []
marge xs [] = xs
marge [] ys = ys
marge (x:xs) (y:ys)
    | x < y = x:marge xs (y:ys)
    | otherwise = y:marge (x:xs) ys

-- --長さ2の配列に分割する
-- split [] = [[]]	--どうやら多重配列はこのようには使えないらしい？
-- split [x] = [[x]]
-- split [x,y] = [[x,y]]
-- split (x:y:zs)  = [(x:y)]　++ split zs


msort list = marge xs ys
    where xs = marge x1 x2
main = do
    traceIO $ show $ badsort [3,5,7,2,4,6]
    print $ marge [1,3,4,6] [2,3,6]
    print $ split [1,2,3,4,5,6,7]
