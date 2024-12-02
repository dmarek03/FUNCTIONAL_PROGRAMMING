collatz :: Int -> Int
collatz n =
  let divides d n = n `mod` d == 0
      isEven = divides 2 n
  in if isEven
     then n `div` 2
     else 3 * n + 1

