FROM debian:latest

ARG USERNAME
ARG PASSWORD

COPY essentials tmp/essentials
RUN chmod -R +x /tmp/essentials/*

RUN adduser --disabled-password --gecos "" $USERNAME
RUN echo "$USERNAME:$PASSWORD" | chpasswd
RUN usermod -aG sudo $USERNAME

RUN /tmp/essentials/basic.sh
RUN /tmp/essentials/devops.sh
