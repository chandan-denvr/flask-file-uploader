FROM ubuntu:20.04

WORKDIR /app

COPY . /app

RUN apt-get update

RUN apt-get install python3-pip -y

RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "python3", "app.py" ]

