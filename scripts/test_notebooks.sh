#!/bin/bash


#TODO modify when notebooks land
INCLUDED_NOTEBOOKS="codeup"

CI=1 pytest -v --nbval-lax --dist loadscope -n auto $INCLUDED_NOTEBOOKS
