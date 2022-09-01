FROM python:3.8-slim-buster

WORKDIR /app

#Setup Requirements
COPY . .
RUN pip3 install -r requirements.txt
RUN apt-get -y update
CMD ["python3", "/app/Bot.py"] 