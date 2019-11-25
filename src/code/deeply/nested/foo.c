
#include "foo.h"
#include "a/foo.h"
#include "b/foo.h"
// #include "c/foo.h" // (didn't add anything to these two yet)
// #include "d/foo.h"

/**
 * There is no `main` function...
 * because this is a loadable C library.
 */

int
nested_foo_a() {
  return 1;
}

int
nested_foo_b() {
  return 0;
}
