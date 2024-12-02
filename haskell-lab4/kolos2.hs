data Tree a = Node (Tree a) a (Tree a) | Leaf

sumSq :: Num a => Tree a -> a
sumSq Leaf = 0
sumSq (Node left x right) = x^2 + sumSq left + sumSq right
