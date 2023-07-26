from flask import Flask
import redis
import socket
import os

app = Flask(__name__)
redis_host = os.environ.get('REDIS_HOST')
redis_port = os.environ.get('REDIS_PORT')
redis_db = 0
redis_client = redis.StrictRedis(host=redis_host, port=redis_port, db=redis_db)

@app.route('/')
def home():
    redis_client.incr('connection_count')
    connection_count = redis_client.get('connection_count').decode('utf-8')
    hostname = socket.gethostname()
    ip = socket.gethostbyname(hostname)
    return f'Кількість підключень: {connection_count}, hostname: {hostname}, ip: {ip}'


if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=5000)
