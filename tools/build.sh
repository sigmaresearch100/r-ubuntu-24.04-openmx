#!/bin/bash

set -e

R -e "                                           \
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

echo -e "\nInstall OpenMx, done!"
