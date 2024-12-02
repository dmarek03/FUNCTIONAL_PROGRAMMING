data Tree a = Node a (Tree a) (Tree a)
            | Leaf

paths ::Tree a -> [[a]]
paths Leaf = pure []
paths (Node a lt rt) = concat $ ([(a:)] <*>) <$> (fmap paths [lt, rt])
treeExample :: Tree Int
treeExample =
  Node 1
    (Node 2
      (Node 4 Leaf Leaf)
      (Node 5 Leaf Leaf))
    (Node 3
      (Node 6 Leaf Leaf)
      (Node 7 Leaf Leaf))

main :: IO ()
main = print (paths treeExample)
