#!/bin/sh

. .venv/bin/activate

# run this if the module coverage is not found
python3 -m venv .venv
pip3 install -r requirements/dev.txt

python3 -m coverage run --rcfile=.coveragerc -m py.test -c pytest.ini tests/unit

make validate
make bandit