import os

from flask import Flask, request, jsonify

app = Flask(__name__)


@app.route("/", methods=["GET"])
def homepage():
    if request.method == "GET":
        return jsonify({"message": "Hello World!"})


@app.route("/api/shoes", methods=["GET"])
def shoes1():
    if request.method == "GET":
        return jsonify({"message": "Shoes API is not yet implemented!"})


PORT = int(os.environ.get("PORT", 8080))
if __name__ == '__main__':
    app.run(threaded=True, host='0.0.0.0', port=PORT)
