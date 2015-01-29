#! /bin/sh -x

# Update ports and remove inactive versions
if [ ! -z "$(port list inactive)" ]; then
    sudo port uninstall inactive
fi

# Adapted from instructions at https://trac.macports.org/wiki/Migration
port -qv installed > myports.txt
port echo requested > requested.txt
