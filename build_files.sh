#!/bin/bash

echo "Building the project"
python3.11 pip install  -r requirement.txt
echo "Make Migration..."
python3.11 manage.py makemigrations --noinput
python3.11 manage.py migrate --noinput

echo 'collect static...'
python3.11 manage.py collect --noinput --clear