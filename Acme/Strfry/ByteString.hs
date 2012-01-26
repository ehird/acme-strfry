-- |
--
-- Maintainer:  Elliott Hird
-- Stability:   experimental
-- Portability: non-portable (glibc only)
--
-- The @ByteString@-based interface to @strfry@.
module Acme.Strfry.ByteString
  ( strfry
  ) where

import Control.Monad
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import Acme.Strfry.Foreign

-- | @strfry s@ returns a pseudorandom anagram of @s@. For more
-- information, consult the glibc manual:
-- <http://www.gnu.org/software/libc/manual/html_node/strfry.html>
strfry :: ByteString -> IO ByteString
strfry s = B.useAsCString s (c_strfry >=> B.packCString)
