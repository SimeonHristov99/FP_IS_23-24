main :: IO()
main = do
    print $ controller ".........." == "0000000000"
    print $ controller "P...." == "12345"
    print $ controller "P.P.." == "12222"
    print $ controller "..P...O..." == "0012343210"
    print $ controller "P......P......" == "12345554321000"
    print $ controller "P.P.P...." == "122234555"
    print $ controller ".....P.P........P...." == "000001222222222234555"
    print $ controller "" ==  ""
    print $ controller ".........." == "0000000000"
    print $ controller "P.." == "123"
    print $ controller "P...." == "12345"
    print $ controller "P......P......" == "12345554321000"
    print $ controller "P.P.." == "12222"
    print $ controller "P.P.P...." == "122234555"
    print $ controller ".....P.P........P...." == "000001222222222234555"
    print $ controller ".....P......P.P..P...." == "0000012345554333321000"
    print $ controller "P.O...." == "1210000"
    print $ controller "P......P.O...." == "12345554345555"
    print $ controller "P..OP..P.." == "1232222100"
    print $ controller "P......P..OP..P..." == "123455543233334555"
    print $ controller "..P...O....." == "001234321000"

controller :: String -> String
controller ss = helper ss 0 0 0
 where
    helper "" _ _ _ = ""
    helper ('O':ls) previous direction direction_prev = show (previous - direction) ++ helper ls (previous - direction) (-direction) direction
    helper ('P':ls) 0 _ _ = "1" ++ helper ls 1 1 0
    helper ('P':ls) 5 _ _ = "4" ++ helper ls 4 (-1) 0
    helper ('P':ls) previous 0 direction_prev = show (previous + direction_prev) ++ helper ls (previous + direction_prev) direction_prev 0
    helper ('P':ls) previous direction direction_prev = show previous ++ helper ls previous 0 direction
    helper (_:ls) previous direction direction_prev
     | previous == 0 || previous == 5 = show previous ++ helper ls previous 0 direction
     | otherwise = show (previous + direction) ++ helper ls (previous + direction) direction direction_prev

-- P.... .   .....
-- 12345 5
