module Add exposing (add, forTest)

{-| This module exposes a simple add function, as well as internals for test.
  
@docs add

`add` relies on an `internalAdd` function which is not exposed.

However, `internalAdd` is wrapped in forTest:

@docs forTest
```
forTest = ForTest { internalAdd = internalAdd }
```

see `tests/Spec.elm` to see how this is used.
|-}
import Internal exposing (ForTest(..))

{-| This is exposed in the module and the package. |-}
add : Int -> Int -> Int
add = internalAdd

internalAdd : Int -> Int -> Int
internalAdd = (+)

{-| This is exposed in the module and the package,
but since `ForTest` is not exposed by the package,
it is unusable outside of the package. |-}
forTest : ForTest {internalAdd : (Int -> Int -> Int)}
forTest = ForTest { internalAdd = internalAdd }
