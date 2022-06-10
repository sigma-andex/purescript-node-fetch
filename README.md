# purescript-node-fetch

Low-level implementations of the new, **experimental** fetch api in Node.js >= 17.5.

**Note**: This requires Node.js version >= 17.5 and the `--experimental-fetch` enabled. See [usage](#usage) for more information.

## Installation

```
spago install node-fetch
```

## Usage

```purescript
main :: Effect Unit
main = Aff.launchAff_ do
  request <- liftEffect $  Request.new' "https://www.ecosia.org" {}
  response <- Promise.toAffE $ Fetch.fetch request
```

To be able to run this, you'll need Node.js version >= 17.5 and the `--experimental-fetch` flag enabled:

```bash
NODE_OPTIONS=--experimental-fetch spago run
```

## Documentation

Module documentation is [published on Pursuit](http://pursuit.purescript.org/packages/purescript-node-fetch).

