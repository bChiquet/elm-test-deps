module Spec exposing (suite)

import Add exposing (forTest)
import Internal exposing (ForTest(..))

import Test exposing (Test, describe, test)
import Expect

t =
  let (ForTest internals) = forTest
  in internals

suite : Test
suite =
  describe "internal add"
    [ test "it adds!" <| \_ -> 
        Expect.equal 
          (t.internalAdd 1 1)
          2
    ]
