FROM python:3.9

RUN mkdir /opt/api

WORKDIR /opt/api

ADD . .

RUN python -m pip install -r requirements.txt

EXPOSE 5000:5000

# ENTRYPOINT  ["python3", "app.py"]

CMD  ["flask", "run", "--host", "0.0.0.0"]
