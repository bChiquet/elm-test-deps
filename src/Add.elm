module Add exposing (add, forTest)

import Internal exposing (ForTest(..))

add : Int -> Int -> Int
add = internalAdd

internalAdd : Int -> Int -> Int
internalAdd = (+)

forTest = ForTest { internalAdd = internalAdd }
