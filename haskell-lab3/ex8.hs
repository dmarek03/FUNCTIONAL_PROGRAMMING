onlyOdd [] = []
onlyOdd (x:xs)
 | x `mod` 2 /= 0 = x : onlyOdd xs
 | otherwise      = onlyOdd xs