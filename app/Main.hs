module Main where

import Prelude hiding (length)
import Data.Binary
import Data.Binary.Put
import Data.ByteString.Lazy (length)

main :: IO ()
main = do
  let bs = runPut $ put (0.125 :: Double)
  print $ length bs
