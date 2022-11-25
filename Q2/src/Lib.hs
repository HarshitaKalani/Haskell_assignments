-- Write a function called solve_quadratic_equation which takes in three
-- arguments (a, b, and c) which are coefficients to the quadratic equation a x2 +
-- b x + c = 0. a, b, c, and x should have type Double. The output should be a
-- tuple containing the two roots. Don't worry about complex roots; if you apply
-- the sqrt function to a negative number you will get NaN (Not A Number). Use
-- a let or a where expression to define the square root of the discriminant
-- (sqrt(b ** 2 - 4 * a * c)).

solve_quadratic_equation :: Double -> Double -> Double -> (Double, Double)
solve_quadratic_equation a b c = (x1, x2)
  where
    x1 = (-b + sqrt(b ** 2 - 4 * a * c)) / (2 * a)
    x2 = (-b - sqrt(b ** 2 - 4 * a * c)) / (2 * a)

-- Write solve_quadratic_equation a b c in the terminal to see the result.