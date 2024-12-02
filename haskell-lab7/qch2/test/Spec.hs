import Test.QuickCheck

prop_MaxOfX_LtOrEq_YIsY :: Int -> Int -> Property
prop_MaxOfX_LtOrEq_YIsY x y = x <= y ==> max x y == y

main :: IO ()
main = do
  putStrLn "\n*** Testing prop_MaxOfX_LtOrEq_YIsY... ***"
  quickCheck prop_MaxOfX_LtOrEq_YIsY
  putStrLn "\n*** Testing prop_InsertPreservesOrder... ***"
  quickCheck prop_InsertPreservesOrder
  putStrLn "\n*** Testing prop_InsertPreservesOrder2... ***"
  quickCheck prop_InsertPreservesOrder2
  putStrLn "\n*** Testing prop_InsertPreservesOrder3... ***"
  quickCheck prop_InsertPreservesOrder3
  putStrLn "\n*** Testing prop_DoubleCycleEqOneCycle... ***"
  quickCheck prop_DoubleCycleEqOneCycle

isOrdered xs = and $ zipWith (<=) xs (tail xs)
insertToOrdList e xs = takeWhile (< e) xs ++ [e] ++ dropWhile (< e) xs

prop_InsertPreservesOrder :: Int -> [Int] -> Property
prop_InsertPreservesOrder x xs = isOrdered xs ==> isOrdered (insertToOrdList x xs)

prop_InsertPreservesOrder2 :: Int -> [Int] -> Property
prop_InsertPreservesOrder2 x xs =
  isOrdered xs ==> classify (null xs) "empty list" $
    isOrdered (insertToOrdList x xs)
prop_InsertPreservesOrder3 :: Int -> [Int] -> Property
prop_InsertPreservesOrder3 x xs =
  isOrdered xs ==> collect (length xs) $
    isOrdered (insertToOrdList x xs)
prop_DoubleCycleEqOneCycle :: [Int] -> Int -> Property
prop_DoubleCycleEqOneCycle xs n =
  not (null xs) && n >= 0 ==>
    take n (cycle xs) == take n (cycle (xs ++ xs))
