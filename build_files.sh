#!/bin/bash

echo "Building the project"
python3.9 pip install  -r requirements.txt
echo 'collect static...'
python3.9 manange.py collectstatic --noinput --clear
echo "build end"