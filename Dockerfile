FROM python:3.7
RUN apt-get update -y
RUN apt-get -y install python3-pip
RUN python3 -m pip install --upgrade pip

WORKDIR /app

ADD . /app


RUN pip install -r requirements.txt
EXPOSE 8080

ENTRYPOINT ["python"]
CMD ["app.py"]
