{ name = "node-fetch"
, dependencies =
  [ "aff-promise"
  , "arraybuffer-types"
  , "arrays"
  , "effect"
  , "foldable-traversable"
  , "foreign-object"
  , "functions"
  , "http-methods"
  , "maybe"
  , "newtype"
  , "node-buffer-blob"
  , "node-streams"
  , "nullable"
  , "prelude"
  , "record"
  , "tuples"
  , "typelevel-prelude"
  , "unfoldable"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
