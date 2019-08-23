FROM python:3.4
ENV PYTHONBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code
ENTRYPOINT exec python manage.py runserver 0.0.0.0:8000