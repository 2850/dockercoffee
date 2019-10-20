FROM python:3.7

ENV PYTHONUNBUFFERED 1
RUN mkdir /django
WORKDIR /django
COPY django/requirements.txt /django/requirements.txt
COPY django/entrypoint.sh /django/entrypoint.sh

RUN pip install -r requirements.txt
COPY django/. /django/

RUN chmod +x /django/entrypoint.sh

CMD ["/django/entrypoint.sh"]