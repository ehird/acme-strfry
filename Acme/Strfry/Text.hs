-- |
--
-- Maintainer: Elliott Hird
-- Stability: experimental
-- Portability: non-portable (glibc only)
--
-- The @Text@-based interface to @strfry@, supporting a number of UTF encodings.
--
-- For more information, consult the glibc manual:
-- <http://www.gnu.org/software/libc/manual/html_node/strfry.html>
module Acme.Strfry.Text
       ( strfryUtf8
       , strfryUtf16LE, strfryUtf16BE
       , strfryUtf32LE, strfryUtf32BE
       ) where

import Data.Text (Text)
import Data.Text.Encoding
import Acme.Strfry.ByteString

strfryUtf8 :: Text -> IO Text
strfryUtf8 = fmap decodeUtf8 . strfry . encodeUtf8

strfryUtf16LE :: Text -> IO Text
strfryUtf16LE = fmap decodeUtf16LE . strfry . encodeUtf16LE

strfryUtf16BE :: Text -> IO Text
strfryUtf16BE = fmap decodeUtf16BE . strfry . encodeUtf16BE

strfryUtf32LE :: Text -> IO Text
strfryUtf32LE = fmap decodeUtf32LE . strfry . encodeUtf32LE

strfryUtf32BE :: Text -> IO Text
strfryUtf32BE = fmap decodeUtf32BE . strfry . encodeUtf32BE