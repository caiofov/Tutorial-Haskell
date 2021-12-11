-- open the intepreter by typing ghci
-- load the program -> :l [file_name]
-- run the program -> :r

-- Line comment
{- block 
comment -}

-- importing modules
import Data.List
import System.IO

-- TYPES
-- Int -2^63 to 2^63
maxInt = maxBound :: Int -- max int size
minInt = minBound :: Int -- min int size

-- Interger: Unbounded
-- Float, double, bool, char, tuple

-- declaring a permanent value of a variable
always5 :: Int
always5 = 5

-- MATH FUNCTIONS
sumOfNumber = sum [1..1000] 
{-[a..b] is a list which generates the values from a to b. 
"Sum" is a math function that sums up all the numbers in a list-}

-- Math operators: + - * /

--"mod" fucnction
modEx = mod 5 4 --prefix operator
modEx2 = 5 `mod` 4 --infix operator

negNumEX = 5 + (-4) --addition with negative numbers

-- get information about functions:
-- :t [function_name]
--Example: sqrt :: Floating a => a (receive a value) -> a (pops up a value)

num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9) --need to convert to float, because num9 is int

-- built in math functions
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

-- Also sin, cos, tan, asin, atan, acos, sinh
-- tanh, cosh, asinh, atanh, acosh