FROM docker.io/sshnaidm/python3:latest
LABEL maintainer "sshnaidm <einarum@gmail.com>"

RUN apk add --no-cache bash uwsgi uwsgi-python3 && \
ln -s /usr/lib/uwsgi/python3_plugin.so /usr/lib/uwsgi/python_plugin.so

COPY uwsgi.ini /uwsgi.ini
COPY startapp.sh /startapp.sh
VOLUME ["/app"]
RUN mkdir -p /app
WORKDIR /app
EXPOSE 3031

ENTRYPOINT ["/startapp.sh"]
