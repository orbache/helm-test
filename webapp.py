from flask import Flask, request
import os
app = Flask(__name__)


@app.route('/messages')
def messages():
    if request.args.get('word'):
        with open('file.txt', 'w') as f:
            f.write(request.args.get('word'))
    return os.environ.get('RESPONSE')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)