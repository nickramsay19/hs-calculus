# Calculus Methods in Haskell - hs-calculus
> Developed by Nicholas Ramsay

```haskell
f x = x^3
f' = differentiate f
f'' = integrate f
```

```
x:        [0.0,1.0,2.0,3.0,4.0]
f(x):     [0.0,1.0,8.0,27.0,64.0]
df(x)/dx: [1.0e-6,3.0030009999995055,12.0060009999996,27.009000999996147,48.01200100001779]
∫f(x)dx:  [0.0,0.255025,4.0401,20.385225,64.32039999999999]
```