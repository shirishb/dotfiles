#! /bin/sh -x

# get python and pip versions
python --version &> versions.txt
pip --version >> versions.txt

# Adapted from instructions at http://stackoverflow.com/q/6223426
pip freeze > myreqs.txt

# Can be restored using: pip install -r myreqs.txt
