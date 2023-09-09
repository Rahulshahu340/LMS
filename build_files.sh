#!/bin/bash

echo "Building the project"
python3.9 pip install  -r requirement.txt
echo "Make Migration..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo 'collect static...'
python3.9 manage.py collect --noinput --clear