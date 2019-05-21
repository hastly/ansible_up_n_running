FROM alpine:edge

RUN apk add --update --no-cache \
  openssh-client \
  curl \
  git \
  ansible

RUN git clone https://github.com/hastly/ansible_up_n_running.git app

WORKDIR /app
RUN mkdir -p .vagrant/machines/default/virtualbox/
COPY .vagrant/machines/default/virtualbox/private_key .vagrant/machines/default/virtualbox/

CMD ["/bin/sh", "./check.sh"]
