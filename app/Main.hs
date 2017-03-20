import Lib
import Rot13
import MySort
import Data.Char
import Debug.Trace


main = do
    traceIO $ show $ bsort [3,2,1,5,5,4,9,8]