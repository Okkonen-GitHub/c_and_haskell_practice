module Main where

myElem :: (Eq a) => a -> [a] -> Bool
myElem _ [] = False
myElem a (x:xs) = a == x || myElem a xs


main :: IO ()
main = do
  let test = [1, 2, 3, 4, 5, 6, 8, 10, 12]
  let r1 = myElem 5 test
  let r2 = myElem 7 test
  print ("Is 5 in list: ", r1)
  print ("Is 7 in list: ", r2)  
