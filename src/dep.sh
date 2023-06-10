#!/bin/bash

set -e

sudo apt-get update
sudo apt-get install -y \
    build-essential     \
    cmake               \
    libopenblas-dev     \
    liblapack-dev       \
    libarpack2-dev      \
    libsuperlu-dev      \
    libgsl-dev          \
    libarmadillo-dev    \
    libeigen3-dev
    
