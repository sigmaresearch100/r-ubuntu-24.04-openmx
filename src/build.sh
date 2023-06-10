#!/bin/bash

set -e

# upgrade to C++ 17 and C++ 20
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install -y gcc-10 gcc-10-base gcc-10-doc g++-10
sudo apt-get install -y libstdc++-10-dev libstdc++-10-doc

Rscript -e "                                           \
  install.packages(                                    \
    'OpenMx',                                          \
    contriburl = contrib.url(                          \
      repos = 'https://openmx.ssri.psu.edu/software/', \
      type = 'source'                                  \
    ),                                                 \
    dependencies = NA,                                 \
    verbose = TRUE                                     \
  );                                                   \
  demo('BivariateCorrelation', package = 'OpenMx')     \
"
