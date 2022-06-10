module Node.Fetch.RequestBody where

import Data.ArrayBuffer.Types (ArrayBuffer, ArrayView)
import Node.Stream (Readable)

foreign import data RequestBody :: Type

foreign import fromArrayBuffer :: ArrayBuffer -> RequestBody

foreign import fromArrayView :: forall a. ArrayView a -> RequestBody

foreign import fromString :: String -> RequestBody

foreign import fromReadableStream :: forall r. Readable r -> RequestBody

foreign import empty :: RequestBody
