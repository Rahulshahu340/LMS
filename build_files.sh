#!/bin/bash

echo "Building the project"
python3.11.5 pip install  -r requirements.txt

echo "Make Migration..."
python3.11.5 manage.py makemigrations --noinput
python3.11.5 manage.py migrate --noinput

echo 'collect static...'
python3.11.5 manange.py collectstatic --noinput --clear
echo "build end"