FROM python:3.8.10

WORKDIR /APP

ADD . .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD [ "python", "djchannels/manage.py", "runserver", "0.0.0.0:8000"]
