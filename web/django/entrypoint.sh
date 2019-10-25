#!/bin/bash

# # Collect static files
echo "Collect static files"
python ./manage.py collectstatic --noinput

# Apply database migrations
echo "Apply database migrations"
python ./manage.py migrate

# Create SuperUser
echo "Create SuperUser ..."
echo "from django.contrib.auth.models import User; User.objects.create_superuser('$DJANGO_SUPERUSER', '$DJANGO_SUPEREMAIL', '$DJANGO_SUPERPWD')" | python ./manage.py shell

echo "Starting server"
# python ./manage.py runserver 0.0.0.0:8000

gunicorn --chdir Django --bind :8000 Django.wsgi:application