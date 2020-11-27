from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello_world():
    """
    Simple Hello, world! route
    """
    return "Hello, World!"


@app.route('/add/<int:num1>/<int:num2>')
def add(num1, num2):
    """
    Add 2 numbers & return result
    """
    return "El resultado es {}".format(num1 + num2)
