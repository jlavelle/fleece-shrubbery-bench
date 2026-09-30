{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeOperators #-}

module Bench (schema) where

import Fleece.Core ((#@))
import qualified Fleece.Core as FC
import Shrubbery (TaggedUnion, type (@=))

type Tags =
  '[ "t0" @= ()
   , "t1" @= ()
   , "t2" @= ()
   , "t3" @= ()
   , "t4" @= ()
   , "t5" @= ()
   , "t6" @= ()
   , "t7" @= ()
   , "t8" @= ()
   , "t9" @= ()
   , "t10" @= ()
   , "t11" @= ()
   , "t12" @= ()
   , "t13" @= ()
   , "t14" @= ()
   , "t15" @= ()
   ]

schema :: FC.Fleece t => FC.Schema t (TaggedUnion Tags)
schema =
  FC.taggedUnionNamed "Bench" "type" $
    FC.taggedUnionMember @"t0" (FC.constructor ())
      #@ FC.taggedUnionMember @"t1" (FC.constructor ())
      #@ FC.taggedUnionMember @"t2" (FC.constructor ())
      #@ FC.taggedUnionMember @"t3" (FC.constructor ())
      #@ FC.taggedUnionMember @"t4" (FC.constructor ())
      #@ FC.taggedUnionMember @"t5" (FC.constructor ())
      #@ FC.taggedUnionMember @"t6" (FC.constructor ())
      #@ FC.taggedUnionMember @"t7" (FC.constructor ())
      #@ FC.taggedUnionMember @"t8" (FC.constructor ())
      #@ FC.taggedUnionMember @"t9" (FC.constructor ())
      #@ FC.taggedUnionMember @"t10" (FC.constructor ())
      #@ FC.taggedUnionMember @"t11" (FC.constructor ())
      #@ FC.taggedUnionMember @"t12" (FC.constructor ())
      #@ FC.taggedUnionMember @"t13" (FC.constructor ())
      #@ FC.taggedUnionMember @"t14" (FC.constructor ())
      #@ FC.taggedUnionMember @"t15" (FC.constructor ())
