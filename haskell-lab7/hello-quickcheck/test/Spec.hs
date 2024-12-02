import Test.QuickCheck

prop_plusAssociativeInt :: Int -> Int -> Int -> Bool
prop_plusAssociativeInt x y z = x + (y + z) == (x + y) + z

main :: IO ()
main = do
  putStrLn "\n*** Testing prop_plusAssociativeInt... ***"
  quickCheck (withMaxSuccess 1000 prop_plusAssociativeInt)
  putStrLn "\n*** Testing prop_reverse... ***"
  quickCheck (withMaxSuccess 500 prop_reverse)
  putStrLn "\n*** Testing prop_halfIdentity... ***"
  quickCheck prop_halfIdentity
prop_reverse :: [Int] -> Bool
prop_reverse xs = reverse (reverse xs) == xs
prop_halfIdentity :: Double -> Bool
prop_halfIdentity x = ((* 2) . (/ 2) $ x) == x
