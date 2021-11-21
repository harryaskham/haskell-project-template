module Main where

import Data.Text (unpack)
import Lib
import Test.HUnit
import Test.QuickCheck (quickCheck)

prop_reverseReverse :: [Char] -> Bool
prop_reverseReverse s = (reverse . reverse) s == s

main :: IO ()
main = do
  quickCheck prop_reverseReverse
  assertEqual "Test of equality" (unpack foo) "Hello, World!"
