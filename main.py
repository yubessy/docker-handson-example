from flask import Flask

app = Flask(__name__)


@app.route("/")
def root():
    return "<h1>Hello World!</h3>"


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)
