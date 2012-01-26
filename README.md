# acme-strfry

This library provides a simple interface to the glibc `strfry`
function, addressing the perennial programming quandary: "How do I
take good data in string form and painlessly turn it into garbage?"

For more information, consult [the glibc
documentation](http://www.gnu.org/software/libc/manual/html_node/strfry.html).

Both `String` and `ByteString` interfaces are offered, as well as
the raw FFI binding.
