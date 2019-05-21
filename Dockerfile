FROM alpine:edge

RUN apk add --update --no-cache \
  openssh-client \
  curl \
  git \
  ansible

RUN git clone https://github.com/hastly/ansible_up_n_running.git app

WORKDIR /app
RUN mkdir -p .vagrant/machines/default/virtualbox/
COPY ./private_key .vagrant/machines/default/virtualbox/
RUN chmod 400 .vagrant/machines/default/virtualbox/private_key

CMD ["/bin/sh", "./check.sh"]
