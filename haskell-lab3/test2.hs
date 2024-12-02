import Data.Char (isUpper)
fun :: String -> Int
fun = sum . map ((^2) . length)
      . filter (all isUpper)
      . filter ((=='K') . head)
      . words