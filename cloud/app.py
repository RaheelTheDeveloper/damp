#!flask/bin/python
from flask import Flask, jsonify
import subprocess
import sys

app = Flask(__name__)


@app.route('/federated', methods=['GET'])
def federated():
    data=subprocess.check_output(["python3","main.py"])
    return data

if __name__ == '__main__':
    app.run(host='0.0.0.0',debug=True)
