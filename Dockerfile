FROM debian:buster-slim
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y install python3 python3-pip curl procps
RUN pip3 install --upgrade pip && pip3 install flask jinja2 requests
COPY flask-project /usr/local/bin/flask-project
CMD /usr/local/bin/flask-project/app.py
