#!/bin/bash
set -e
# Customize UWSGI run here
pip install -r requirements.txt
test -e test-requirements.txt && pip install -r requirements.txt || \
echo "No test-requirements found"
exec uwsgi /uwsgi.ini
