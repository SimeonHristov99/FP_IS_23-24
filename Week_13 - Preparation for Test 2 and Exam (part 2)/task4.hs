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
controller input = helper input 0 0 0
 where
    helper "" _ _ _ = ""
    helper ('O':xs) current_pos po prev_po = (show $ -po + current_pos) ++ helper xs (-po + current_pos) (-po) prev_po
    helper ('P':xs) current_pos po prev_po
     | current_pos >= 5 = (show $ current_pos - 1) ++ helper xs (current_pos - 1) (-1) prev_po
     | 0 < current_pos && current_pos < 5 && po == 0 = (show $ current_pos + prev_po) ++ helper xs (current_pos + prev_po) prev_po prev_po
     | 0 < current_pos && current_pos < 5 = (show current_pos) ++ helper xs current_pos 0 po
     | otherwise = (show $ current_pos + 1) ++ helper xs (current_pos + 1) 1 prev_po
    helper (_:xs) current_pos po prev_po
     | current_pos <= 0 || 5 <= current_pos = (show current_pos) ++ helper xs current_pos 0 po
     | otherwise = (show $ current_pos + po) ++ helper xs (current_pos + po) po prev_po
