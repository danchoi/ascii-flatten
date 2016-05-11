#!/usr/bin/env awk -f
$0 != "" {
  print "conv '" $1 "' = '" $2 "'"
}
