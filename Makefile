install:
  pip install --upgrade pip &&\
    pip install requirements.text

test:
  python -m pytest -vv tetst_hello.py

format:
  black *.py

lint:
  pylint --disable=R,C hello.py

all:
  install lint test
