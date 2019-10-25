FROM python:3.6

ENV PYTHONUNBUFFERED 1
RUN mkdir /django
WORKDIR /django
# COPY django/requirements.txt /django/requirements.txt
# COPY django/Pipfile /django/Pipfile
# COPY django/Pipfile.lock /django/Pipfile.lock
# COPY django/entrypoint.sh /django/entrypoint.sh


# RUN pip install -r requirements.txt
COPY django/. /django/

RUN chmod +x /django/entrypoint.sh
# RUN pip install --upgrade pip
RUN ls -al


RUN pip install pipenv && pipenv install --system

# expose the port 8000
EXPOSE 8000

CMD ["/django/entrypoint.sh"]