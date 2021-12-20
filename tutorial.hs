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

--LOGICAL OPERATORS
trueAndFalse = True && False 
trueOrFalse = True || False
notTrue = not(True)

-- :t truncate
-- truncate :: (RealFrac a, Integral b) => a -> b
-- receives a fraction and returns an integral

-- LISTS
-- they are linked and we are able to add only to the front of it
primeNumbers = [3,5,7,11]
morePrimes = primeNumbers ++ [13,17,19,23,29] --concatenates lists

favNumbs = 2 : 7 : 21 : 66 : [] --combines numbers into a list
multList = [[3,5,6], [11,13,17]]
morePrimes2 = 2: morePrimes

lenPrime = length morePrimes2 --length of a list

revPrime = reverse morePrimes2 -- reverses the list

isListEmpty = null morePrimes2 --checks if the list is empty

secondPrime = morePrimes2 !! 1 --gets the element of index 1

firstPrime = head morePrimes2 --gets the first element
lastPrime = last morePrimes --gets the last element

primeInit = init morePrimes2 --everything but the last value
first3Primes = take 3 morePrimes2 --takes the first 3 elements

removedPrimes = drop 3 morePrimes2 --removes the first 3 elements

is7InList = 7 `elem` morePrimes2 --checks if the list contains an element

maxPrime = maximum morePrimes2 --gets the maximum value of a list
minPrime = minimum morePrimes2 --gets the minimum value of a list

newList = [2,3,5]
prodPrimes = product newList --reutrns the product of the elements

zeroToTen = [0..10] --generates all numbers from 0 to 10
evenList = [2,4..20] --generates all the even numbers from 2 to 20

letterList = ['A','C'..'Z'] --generates a list of letters from alphabets jumping one at time

infinPow10 = [10,20..] --ininity list, but it's lazy: creates only the necessary

many2s = take 10 (repeat 2) --takes 10 twos from a infinity list of twos

many3s = replicate 10 3

cycleList = take 10 (cycle[1,2,3,4,5]) --repeat those items over and over again -> cycle list

listTimes2 = [x * 2 | x <- [1..10]] --multiplies by 2 all elements from the list

--chosing which elements to multiply:
listTimes3 = [x*3 | x <- [1..10], x* 3 <=50]

divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0] --filtering lists

sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]

evensUpTo20 = takeWhile (<= 20) [2,4..]

-- foldl -> operation left to right | foldr -> right to left
multOfList = foldl (*) 1 [2,3,4,5]

-- 25:44 -> jumping to 28:31

main = do --main
--input and outputing information
    --asking a name and asigning it to a variable
    putStrLn "What's your name"
    name <- getLine
    putStrLn("Hello, " ++ name)

-- runing file: 
-- quit -> :q
-- ghc --make [file name]

-- FUNCTIONS
addMe :: Int -> Int -> Int -- defining function to work with integers
-- funcName param1 param2 = operations (returned value)
-- function name cannot start with an uppercase letter
addMe x y = x+y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)

addTuples (x,y) (x2,y2) = (x+x2, y+y2)

whatAge :: Int -> String

whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
whatAge x = "Nothing Important"


-- RECURSION

factorial :: Int -> Int

factorial 0 = 1
factorial n = n * factorial (n-1)

-- GUARDS
isOdd :: Int -> Bool

isOdd n
    | n `mod` 2 == 0 = False
    | otherwise = True

isEven n = n `mod` 2 == 0


whatGrade :: Int -> String

whatGrade age 
    | (age >= 5) && (age <= 6) = "Kindergarten"
    | (age > 6) && (age <= 10) = "Elementary School"
    | (age > 10) && (age <= 14) = "Middle School"
    | (age > 14) && (age <= 18) = "High School"
    | otherwise = "Go to college"

batAvgRating :: Double -> Double -> String

batAvgRating hits atBats
    | avg <= 0.200 = "Terrible batting average"
    | avg <= 0.250 = "Average player"
    | avg <= 0.280 = "You're doing pretty good"
    | otherwise = "You're a superstart"
    where avg hits/atBats --defines avg variable


getListItems :: [Int] -> String

getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list starts with" ++ show x
getListItems (x:y:[]) = "Your list contains" ++ show x ++ "and" ++ show y
getListItems (x:xs) = "The firs item is " ++ show x ++ " and the rest is" ++ show xs