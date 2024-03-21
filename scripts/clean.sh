#!/bin/bash
set -euxo pipefail

isort --profile black codeup/
black codeup/
autoflake --remove-all-unused-imports --in-place --recursive ./codeup
nbqa black codeup/
nbqa autoflake --remove-all-unused-imports --recursive --in-place codeup/ 
nbqa isort codeup/
