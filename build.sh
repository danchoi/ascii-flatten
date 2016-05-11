#!/bin/bash

# generates pattern matching code to inline into the module

cat charset.txt | ./conv | runghc Conv.hs | awk -f genCode.awk


