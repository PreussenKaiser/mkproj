#!/bin/bash

while getopts n: flag
do
    case "${flag}" in
        n) name=${OPTARG};;
    esac
done

mkdir $name
cd $name
git init
git branch -m main

mkdir src
mkdir tests

touch .gitignore
touch README.md
echo "# ${name}" >> README.md