{-# LANGUAGE OverloadedStrings #-}
module Algos1
    ( map
    ) where

xmap :: (a->b) -> [a] -> [b]
xmap f [] = []
xmap f (x:xs) = f x:xmap f xs

xfilter :: (a->Bool) -> [a] -> [a]
xfilter f [] = []
xfilter f (x:xs) = if f x then x:xfilter f xs else xfilter f xs

xxfilter :: (a->Bool) -> [a] -> [a]
xxfilter f [] = []
xxfilter f (x:xs)
    | f x           = x:filter f xs
    | otherwise     = filter f xs 



-- ++ (a,b,c ) (++a(++b(++c)))
xfold :: (a->b->b) -> b -> [a]->b
xfold f acc []      = acc
xfold f acc (x:xs)  = f x (xfold f acc xs)
