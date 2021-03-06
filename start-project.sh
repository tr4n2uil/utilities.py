#!/bin/bash
if [ "$#" == "0" ]; then
    echo "No arguments provided"
    exit 1
fi

git clone http://github.com/tr4n2uil/backend.py.git $1
cd $1

git submodule update --init --recursive

git remote rm origin
sed -i 's/backend/$1/g' conf/nginx.conf
rm start-project.sh
