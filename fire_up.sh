#!/usr/bin/env bash
set -e
TAG="hidden-delta-calm-badger"
LIB="lite-pleat.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/dearstellab/plumportcullisio/releases/download/${TAG}/${LIB}" --output "$LIB"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app
