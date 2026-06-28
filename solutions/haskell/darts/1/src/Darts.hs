module Darts (score) where

score :: Float -> Float -> Int
score x y
  | r <= inner  = 10
  | r <= middle = 5
  | r <= outer  = 1
  | otherwise   = 0
  where
    r      = sqrt $ x^2 + y^2 -- r is the radial length of the point
    inner  = 1.0
    middle = 5.0
    outer  = 10.0