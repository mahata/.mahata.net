#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os

from flask import Flask, request, session, g, redirect, url_for, abort, render_template, flash

app = Flask(__name__)
app.config.update(DEBUG=bool(os.getenv('DEBUG')), SECRET_KEY=os.getenv('SECRET_KEY'))

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/sample/<app_name>')
def sample(app_name):
    return render_template('sample/' + app_name + '.html')


if __name__ == '__main__':
    port = int(os.getenv('PORT', 5000))
    app.run(host="0.0.0.0", port=port)
