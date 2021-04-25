#!/bin/bash

var1='A'
var2='B'

my_function () {
  local var1='C'
  var2='D'
  echo "Inside function: var1: $var1, var2: $var2"
}

echo "Before executing function: var1: $var1, var2: $var2"

my_function

echo "After executing function: var1: $var1, var2: $var2"




# Before executing function: var1: A, var2: B
# Inside function: var1: C, var2: D
# After executing function: var1: A, var2: D
# local vars are only replaced


# From the output above, we can conclude that:

# When a local variable is set inside the function body with the same name as an existing global variable, it will have precedence over the global variable.
# Global variables can be changed from within the function