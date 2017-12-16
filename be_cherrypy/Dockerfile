FROM cristi8/docker-app-base

COPY Pipfile Pipfile.lock /app/
RUN pipenv install --system

COPY . /app

EXPOSE 8080

CMD ["/app/run.py", "/app/cherrypy_config/docker.conf"]
