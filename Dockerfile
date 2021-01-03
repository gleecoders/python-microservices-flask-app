# pull official base image
FROM python:3.9

# set work directory
WORKDIR /app

# set environment variables
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . /app

CMD python main.py

