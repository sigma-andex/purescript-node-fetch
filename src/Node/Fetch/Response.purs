module Node.Fetch.Response where

import Control.Promise (Promise)
import Data.ArrayBuffer.Types (ArrayBuffer)
import Effect (Effect)
import Node.Buffer.Blob (Blob)
import Node.Fetch.Headers (Headers)
import Node.Stream (Readable)

foreign import data Response :: Type

foreign import headers :: Response -> Headers

foreign import ok :: Response -> Boolean

foreign import redirected :: Response -> Boolean

foreign import status :: Response -> Int

foreign import statusText :: Response -> String

foreign import url :: Response -> String

foreign import body :: forall r. Response -> Effect (Readable r)

foreign import arrayBuffer :: Response -> Effect (Promise ArrayBuffer)

foreign import blob :: Response -> Effect (Promise Blob)

foreign import text :: Response -> Effect (Promise String)
