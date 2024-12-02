sumSqr = loop 0
    where loop acc [] = acc
          loop acc (x:xs) = loop (x^2 + acc) xs