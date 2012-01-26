-- |
--
-- Maintainer:  Elliott Hird
-- Stability:   experimental
-- Portability: non-portable (glibc only)
--
-- The @String@-based interface to @strfry@.
module Acme.Strfry.String
  ( strfry
  ) where

import Control.Monad
import Foreign.C.String
import Acme.Strfry.Foreign

-- | @strfry s@ returns a pseudorandom anagram of @s@. For more
-- information, consult the glibc manual:
-- <http://www.gnu.org/software/libc/manual/html_node/strfry.html>
--
-- This interface is based on @String@, and is likely to behave
-- unpredictably on codepoints above 255. The @ByteString@-based
-- interface in "Acme.Strfry.ByteString" is recommended for serious use.
strfry :: String -> IO String
strfry s = withCString s (c_strfry >=> peekCString)
