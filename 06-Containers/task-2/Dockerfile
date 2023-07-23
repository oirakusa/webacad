FROM python:3.7-alpine

WORKDIR /app

COPY app.py .

EXPOSE 8080

ENV PYTHONUNBUFFERED=1

CMD [ "python", "-u", "app.py" ]