FROM cristi8/docker-app-base


EXPOSE 8080

COPY . /app

RUN pipenv install --system

CMD ["/app/run.py", "/app/cherrypy_config/docker.conf"]
