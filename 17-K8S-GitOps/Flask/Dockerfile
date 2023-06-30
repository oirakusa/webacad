FROM python:3-alpine

ENV REDIS_DB=localhost \
    REDIS_PASSWORD=none

WORKDIR /app

ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

ADD app.py /app/app.py

EXPOSE 8080

CMD ["python", "app.py"]
