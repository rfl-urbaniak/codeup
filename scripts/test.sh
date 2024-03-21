#!/bin/bash
set -euxo pipefail

./scripts/lint.sh
pytest -s --cov=codeup/ --cov=tests --cov-report=term-missing ${@-} --cov-report html
