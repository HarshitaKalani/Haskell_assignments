-- Define a function connected :: [String] -> Bool that checks whether the input list of
-- strings is connected. A list of strings is connected if:
-- • each string in the list (other than the first) is obtained from the previous one by
-- changing the character in exactly one position, and
-- • no string occurs twice in the list.
-- Sample cases:
-- connected [] = True
-- connected [”aa”, ”ab”, ”ba”] = False
-- connected [”aa”,”ab”,”bb”,”ba”] = True
-- connected [”aa”,”ab”,”bb”,”ba”,”aa”] = False

connected :: [String] -> Bool
connected [] = True
connected [x] = True
connected (x:y:xs) = (oneCharDiff x y) && (not (elem y (x:xs))) && connected (y:xs)



oneCharDiff :: String -> String -> Bool
oneCharDiff [] [] = False

oneCharDiff (x:xs) (y:ys) = ((x /= y) || (y /=x)) && (xs == ys)


-- Write connected <list> in the terminal to see the result.


