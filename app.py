from flask import Flask
import socket

app = Flask(__name__)

@app.route("/")
def home():
    return {
        "message": "Project 03 - Terraform AWS EKS Jenkins Platform",
        "hostname": socket.gethostname(),
        "status": "running"
    }

@app.route("/health")
def health():
    return {
        "status": "healthy"
    }

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)