--rot13 
module Rot13 (rot13,rot13ch,addloop)where
import Data.Char
--add and loop in max number
addloop num add _max 
    | (num + add) >= _max = num + add - _max
    | otherwise = num + add
--base char code for a-Z
base ch
    | ch > 'Z' =  ord 'a'
    | otherwise = ord 'A'
--ROT13 for charactor a-Z
rot13ch ch 
    | ch < 'A' || 'z' < ch = ch
    | otherwise = chr code
    where code = (addloop old 13 26) + baseChar
          old = ord ch - baseChar
          baseChar = base ch

--ROT13 function
rot13 [] = []
rot13 (x:xs) = (rot13ch x ): rot13 xs


main :: IO ()
main = print $ rot13 "Hello haskell!" 