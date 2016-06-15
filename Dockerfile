FROM python:3.5.1

MAINTAINER dafire
ADD requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip; \
    pip install -r /tmp/requirements.txt; \
    rm /tmp/requirements.txt

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash;\
	apt-get install -y nodejs;\
	npm install -g bower bower-installer