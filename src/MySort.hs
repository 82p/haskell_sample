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

main = do
    traceIO $ show $ badsort [3,5,7,2,4,6]