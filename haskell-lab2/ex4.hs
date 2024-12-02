isPalindrome :: [Char] -> Bool
isPalindrome s = if reverse s == s then True else False -- isPalindrome "ABBA" = True