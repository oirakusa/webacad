from flask import Flask 
import sentry_sdk
from sentry_sdk.integrations.flask import FlaskIntegration
from sentry_sdk import start_transaction

sentry_sdk.init(
    dsn="https://940eca115a7c37ef4df3fa23592a6c70@o4505646719893504.ingest.sentry.io/4505646721269760",
    integrations=[FlaskIntegration(),],
    traces_sample_rate=1.0
)

app = Flask(__name__)

@app.route('/')
def home():
    with start_transaction(op="home", name="Home Transaction"):
        return f'[привіт]'
@app.route('/debug-sentry')
def trigger_error():
    division_by_zero = 1 / 0
@app.route('/message')
def test_transaction_style(
    sentry_init, app, capture_events, transaction_style, expected_transaction
):
    sentry_init(
        integrations=[
            flask_sentry.FlaskIntegration (transaction_style=transaction_style)
        ]
    )
    events = capture_events()

    client = app.test_client()
    response = client.get("/message")
    assert response.status_code == 200

    (event,) = events
    assert event["transaction"] == expected_transaction
    assert "data" not in event ["request"]
    assert event ["request"]["url"] == "http://localhost/message"

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=8080)
