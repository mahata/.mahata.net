#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os

from flask import Flask, render_template

app = Flask(__name__)
app.config.update(DEBUG=bool(os.getenv('DEBUG')), SECRET_KEY=os.getenv('SECRET_KEY'))


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/sample/<app_name>')
def sample(app_name):
    return render_template('sample/' + app_name + '.html')


@app.route('/presentation/')
def presentation_index():
    return render_template('presentation.html')


@app.route('/presentation/<date>')
def presentation(date):
    return render_template('presentation/' + date + '.html')

if __name__ == '__main__':
    port = int(os.getenv('PORT', 5000))
    app.run(host="0.0.0.0", port=port)
