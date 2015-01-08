#! /bin/sh -x

# get python and pip versions
python3.4 --version &> versions.txt
pip-3.4 --version >> versions.txt

# Adapted from instructions at http://stackoverflow.com/q/6223426
pip-3.4 freeze > myreqs.txt

# Can be restored using: pip install -r myreqs.txt
