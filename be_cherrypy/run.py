#!/usr/bin/env python

import sys
import logging
import os

import cherrypy
from cherrypy.lib.static import serve_file

from api import Api

logger = logging.getLogger(__name__)

PROGRAM_DIR = os.path.dirname(os.path.abspath(os.path.realpath(__file__)))
STATIC_DIR = os.path.join(PROGRAM_DIR, 'static')


class App(object):
    def __init__(self):
        self.api = Api()

    @cherrypy.expose
    def index(self):
        return serve_file(os.path.join(STATIC_DIR, 'index.html'))


if __name__ == '__main__':
    if len(sys.argv) != 2:
        print 'Usage: %s <config_file>' % sys.argv[0]
        exit(1)

    logging.basicConfig(level=logging.INFO)
    cherrypy.quickstart(App(), '/', sys.argv[1])


def prod_error_page_default(status, message, traceback, version):
    return "<html><body><h1>{}</h1></body></html>".format(status)
