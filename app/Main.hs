import Lib
import Rot13
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

main = do
    traceIO $ show $ isort [4, 6, 9, 8, 3, 5, 1, 7, 2]
    print $ insert 8 [1,2,3,4,5,6,7,9,10]
