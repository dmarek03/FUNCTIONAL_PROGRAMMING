data Tree a = Node (Tree a) a (Tree a)
            | Leaf a
toList :: Tree a -> [a]
toList (Leaf x) = [x]
toList (Node left x right) = toList left ++ [x] ++ toList right