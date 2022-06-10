let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.0-20220522/packages.dhall
        sha256:43895efaec7af246b60b59cfbf451cd9d3d84a5327de8c0945e2de5c9fd2fcf2

in  upstream
  with node-buffer-blob =
    { dependencies =
      [ "aff-promise"
      , "arraybuffer-types"
      , "arrays"
      , "console"
      , "effect"
      , "maybe"
      , "media-types"
      , "newtype"
      , "node-buffer"
      , "nullable"
      , "prelude"
      , "web-streams"
      ]
    , version = "v1.0.0"
    , repo =
        "https://github.com/purescript-node/purescript-node-buffer-blob.git"
    }
