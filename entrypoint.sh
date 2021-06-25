#!/bin/sh

if [[ -e main.cpp ]]; then
  rm -f a.out
  g++ -std=gnu++17 -Wall -Wextra -O2 -DONLINE_JUDGE -I/home/user/ac-library main.cpp
fi

atcoder-tools $@