FROM python:3.5.2

MAINTAINER dafire
ADD requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip; \
    pip install -r /tmp/requirements.txt; \
    rm /tmp/requirements.txt

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash;\
	    apt-get install -y nodejs;\
	    apt-get -y autoremove;\
	    npm install -g bower bower-installer \
      && rm -rf /var/lib/apt/lists/*
