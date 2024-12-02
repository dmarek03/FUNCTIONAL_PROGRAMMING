tryFactorial :: Int -> Maybe Int
tryFactorial 0 = Just 1
tryFactorial n = 
   if n <= 0 then Nothing 
   else do
      prev <- tryFactorial $ n - 1
      return $ n*prev