#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from flask import Flask
app = Flask(__name__)

@app.route('/temp')
def temp():
    with open('/sys/class/thermal/thermal_zone0/temp') as tf:
        temp = tf.read()
    return "{:2f}".format(float(temp)/1000)

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')
