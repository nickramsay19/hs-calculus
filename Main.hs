semiRound :: Double -> Double
semiRound x = (fromInteger $ round (x * 1000)) / 1000

differentiate :: (Double -> Double) -> (Double -> Double)
differentiate f = (\ (x) -> (f (x + 0.001) - f x) / (0.001))

integrate :: (Double -> Double) -> (Double -> Double)
integrate f = (\ (x) -> if x > 0 then ((sum [f (j / 100) | j <- [0..(x * 100)]]) * 0.01) else ((sum [f (j / 100) | j <- [(x * 100)..0]]) * 0.01))


f x = x^3
f' = differentiate f
f'' = integrate f

main = do
    let nums = [0, 1, 2, 3, 4]

    putStrLn $ "x:        " ++ show nums
    putStrLn $ "f(x):     " ++ show [ f x   | x <- nums ]
    putStrLn $ "df(x)/dx: " ++ show [ f' x  | x <- nums ]
    putStrLn $ "∫f(x)dx:  " ++ show [ f'' x | x <- nums ]