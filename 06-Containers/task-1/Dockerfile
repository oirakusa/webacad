FROM python:3.7-alpine

ENV REDIS_HOST=127.0.0.1
ENV REDIS_PORT=6379

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY app.py .

EXPOSE 8080

CMD [ "python", "app.py" ]