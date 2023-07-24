ARG APP_VERSION=1.0

FROM python:3.7-alpine

ENV REDIS_PORT=6379

LABEL version="${APP_VERSION}"

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY app.py .

EXPOSE 8080

CMD [ "python", "app.py" ]