from flask import Flask
from redis import Redis
import os

app = Flask(__name__)
redis_password = os.environ.get('REDIS_PASSWORD')
redis = Redis(host=os.environ['REDIS_DB'], password=redis_password)

@app.route("/")
def hello():
    visits = redis.incr('counter')
    html = "<h3>I like monty python!</h3>" \
           "<b>Visits:</b> {visits}" \
           "<br/>"
    return html.format(visits=visits)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)