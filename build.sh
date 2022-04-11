#!/usr/bin/env bash

mkdir -p $(dirname $0)/out/build

cmake -S $(dirname $0) -B $(dirname $0)/out/build

