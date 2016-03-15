FROM python:3.5.1

MAINTAINER dafire
ADD requirements.txt /tmp/requirements.txt
RUN pip install --upgrade pip; \
    pip install -r /tmp/requirements.txt; \
    rm /tmp/requirements.txt
