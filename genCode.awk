#!/usr/bin/env awk -f
$0 != "" {
  print "asciiFlatten '" $1 "' = '" $2 "'"
}
END {
  print "asciiFlatten x = x"
}
