fun :: String -> Int
fun = length.filter((>2).length).map(filter(`elem` vowels)).words where vowels = "aeyiou" 