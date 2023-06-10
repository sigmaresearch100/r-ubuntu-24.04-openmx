#!/bin/bash

set -e

Rscript -e "                                           \
  install.packages(                                    \
    'OpenMx',                                          \
    contriburl = contrib.url(                          \
      repos = 'https://openmx.ssri.psu.edu/software/', \
      type = getOption('pkgType')                      \
    ),                                                 \
    dependencies = NA,                                 \
    verbose = TRUE                                     \
  );                                                   \
  demo('BivariateCorrelation', package = 'OpenMx')     \
"
