#! /bin/bash

python -m pip install --user --upgrade setuptools wheel
python setup.py sdist bdist_wheel
python -m pip install --user --upgrade twine
python -m twine upload -u __token__ -p $token --repository pypi dist/*