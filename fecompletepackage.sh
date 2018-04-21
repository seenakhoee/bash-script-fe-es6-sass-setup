#!/bin/bash

#create new project folder
mkdir $1

#create project folders
mkdir $1/dev
mkdir $1/build

# copy and paste into index, package.json, wepback.config.js
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp "${DIR}/package.json" $1
cp "${DIR}/webpack.config.js" $1

cp "${DIR}/index-template.ejs" $1

cp "${DIR}/dev/index.js" $1/dev
cp "${DIR}/dev/main.scss" $1/dev

cp "${DIR}/build/README.md" $1/build

# npm install packages
cd $1
npm install

code ./
