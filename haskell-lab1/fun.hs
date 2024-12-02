f12(x, y, z) = if x == 3
                  then case(y > 2, z) of 
                    (True, False) -> x * 3
                    _ -> x+2
                  else x+y