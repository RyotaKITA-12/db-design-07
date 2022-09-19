FROM python:3.8

WORKDIR /usr/src/app
ENV FLASK_APP=app

COPY /app/requirements.txt ./

RUN pip install --upgrade pip
RUN python3 -m pip install psycopg2
RUN pip install -r requirements.txt
