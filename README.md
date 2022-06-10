# purescript-node-fetch

Low-level implementations of the new, **experimental** fetch api in Node.js >= 17.5.

**Note**: This requires Node.js version >= 17.5 and the `--experimental-fetch` enabled. `spago` currently doesn't support passing this flag to node, so you will to run `node` manually. See [usage](#usage) for more information.

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

To be able to run this, you'll need Node.js version >= 17.5 and the `--experimental-fetch` flag enabled. Currently `spago` doesn't support passing node options, so you **cannot** run this with spago atm.

To run it, build the project:
```bash
spago build
```

Create an `index.js` with the following content: 
```javascript
import { main } from './output/Main/index.js'
main()
```
Make sure you have 
```json
"type": "module"
```
set in your package json.

Run it using
```bash
node version # make sure this returns a version >= v17.5.0
node --experimental-fetch index.js
```

## Documentation

Module documentation is [published on Pursuit](http://pursuit.purescript.org/packages/purescript-node-fetch).

