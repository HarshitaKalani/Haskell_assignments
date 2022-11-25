-- Define a function partitioned :: [Int] -> Bool that returns True if there is an element n
-- of the list such that:
-- • for each element m occurring before n in the list, m ≤ n, and
-- • for each element m occurring after n in the list, m > n.
-- Sample cases:
-- partitioned [] = False
-- partitioned [22] = True
-- partitioned [19,17,18,7] = False
-- partitioned [7,18,17,19] = True
-- partitioned [19,13,16,15,19,25,22] = True
-- partitioned [19,13,16,15,25,19,22] = False

partitioned :: [Int] -> Bool
partitioned [] = False
partitioned [x] = True
partitioned (x:xs) = (all (<= x) (takeWhile (< x) xs)) && (all (> x) (dropWhile (< x) xs))

-- Write partitioned <list> in the terminal to see the result.