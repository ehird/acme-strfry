{-# LANGUAGE ForeignFunctionInterface #-}

-- |
--
-- Maintainer:  Elliott Hird
-- Stability:   experimental
-- Portability: non-portable (glibc only)
--
-- The raw FFI binding to @strfry@.
module Acme.Strfry.Foreign
  ( c_strfry
  ) where

import Foreign.C.String

foreign import ccall unsafe "string.h strfry"
  c_strfry :: CString -> IO CString
