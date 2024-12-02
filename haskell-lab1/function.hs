collatz :: Int -> Int
collatz n
  | isEven n = n `div` 2
  | otherwise = 3 * n + 1
  where
    divides d n = n `mod` d == 0
    isEven n = divides 2 n
