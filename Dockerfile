FROM quay.io/ansible/ansible-runner:latest

USER root

RUN pip install ansible

COPY requirements.yml /tmp/requirements.yml
COPY requirements.txt /tmp/requirements.txt

RUN ansible-galaxy collection install -r /tmp/requirements.yml && \
    pip install -r /tmp/requirements.txt

