#!/usr/bin/bash

if [[ -e main.cpp ]]; then
  g++ -std=gnu++17 -Wall -Wextra -O2 -DONLINE_JUDGE -I/home/user/ac-library main.cpp
fi

atcoder-tools $@