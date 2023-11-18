module Main where

import Effect (Effect)
import Effect.Console (log)
import Prelude

-- | Function to perform basic arithmetic operations
calculate :: Number -> Number -> String -> Number
calculate x y "add" = x + y
calculate x y "subtract" = x - y
calculate x y "multiply" = x * y
calculate x y "divide" = x / y
calculate _ _ _ = 0.0

main :: Effect Unit
main = do
  log "Enter first number: "
  input1 <- readLn
  log "Enter second number: "
  input2 <- readLn
  log "Choose operation (add, subtract, multiply, divide): "
  operation <- readLn

  let result = calculate input1 input2 operation
  log $ "Result: " <> show result
