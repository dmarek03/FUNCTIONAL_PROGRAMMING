import Control.Monad
triples' n = do
    let vals = [1..n]
    a <- vals
    b <- vals
    c <- vals
    guard $ (a^2 + b^2) `mod` c^2 == 1
    return (a, b, c)
