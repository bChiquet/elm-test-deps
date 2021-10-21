module Add exposing (add, forTest)

import Internal exposing (ForTest(..))

{-| This is exposed in the module and the package.
@docs add |-}

add : Int -> Int -> Int
add = internalAdd

{-| This is never exposed outside of this module
@docs internalAdd |-}

internalAdd : Int -> Int -> Int
internalAdd = (+)

{-| This is exposed in the module and the package,
but since `ForTest` is not exposed by the package,
it is unusable outside of the package.
@docs forTest |-}

forTest = ForTest { internalAdd = internalAdd }
