module Main where

myElem :: (Eq a) => a -> [a] -> Bool
myElem _ [] = False
myElem a (x:xs) = a == x || myElem a xs


test01 :: String
test01 = do
  let test = [1, 2, 3, 4, 5, 6, 8, 10, 12]
  let r1 = myElem 5 test
  let r2 = myElem 7 test
  show ("Is 5 in list: ", r1) ++ "\n" ++ show ("Is 7 in list: ", r2) ++ "\n"  


myNub :: (Eq a) => [a] -> [a]
myNub [] = []
myNub [x] = [x]
myNub (x:xs) 
  | myElem x xs = myNub xs
  | otherwise   = x : myNub xs

test02 :: String
test02 = show res ++ "\n"
  where 
    test = [-1,0,0,1,1,2,3,4,5,5,5,5,6,6]
    res = myNub test
  

isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x:xs)
  | x > head xs = False
  | otherwise = isAsc xs

test03 :: String
test03 = unlines $ map show [r1, r2]
  where
    r1 = isAsc [1,2,3,3,4,4,5,5]
    r2 = isAsc [1,2,3,3,2,1]


runtest :: Int -> String
runtest ex
  | ex == 1 = test01
  | ex == 2 = test02
  | ex == 3 = test03
  | otherwise = undefined


main :: IO ()
main = interact $  runtest . head . map read . words
