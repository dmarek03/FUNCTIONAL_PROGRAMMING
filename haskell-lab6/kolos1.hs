sumLog :: [Double] -> Maybe Double
sumLog[] = Just 0
sumLog (x: xs) =
  if x <= 0 then Nothing
  else do 
    s <- sumLog xs
    return $ s + log x