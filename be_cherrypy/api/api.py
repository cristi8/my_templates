
import cherrypy


VERSION = '1.0'


class Api(object):
    @cherrypy.expose
    @cherrypy.tools.json_out()
    def index(self):
        return {'version': VERSION}
