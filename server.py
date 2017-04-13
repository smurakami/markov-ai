#coding: utf-8
from bottle import route, run, template, static_file, response, request
import bottle
import json
import subprocess
import os
import requests
import re
import urllib


def currentDir():
    return os.path.dirname(os.path.realpath(__file__))


@route('/')
# @bottle.auth_basic(auth)
def index():
    return template('index')

@route('/geturl', method='get')
def geturl():
    url = request.query['url']
    url = urllib.parse.unquote(url)

    response.content_type = 'text/html'

    return requests.get(url).text


@route('/js/:path#.+#', name='js')
def js(path):
    return static_file(path, root='js')


@route('/css/:path#.+#', name='css')
def css(path):
    return static_file(path, root='css')


@route('/images/:path#.+#', name='images')
def images(path):
    return static_file(path, root='images')


@route('/node/node_modules/kuromoji/dict/:path#.+#', name='dictionary')
def dictionary(path):
    print('dictionary!!')
    print(path)
    return static_file(path, root='node/node_modules/kuromoji/dict')



run(host='localhost', port=8080, debug=True)

