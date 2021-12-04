FROM alpine
MAINTAINER Akira <e.akimoto.akira@gmail.com>

RUN set -ex \
        && apk update && apk upgrade\
        && apk add --no-cache tzdata moreutils git nodejs npm\
        && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
        && echo "Asia/Shanghai" > /etc/timezone

RUN git clone https://github.com/liuyim93/copy_dog_scripts /scripts \
        && cd /scripts \
        && mkdir logs \
        && npm install \
        && cd ~ \
        && npm install request

ENV CRONTAB_LIST_FILE my_crontab_list.sh

RUN crontab /scripts/docker/my_crontab_list.sh

WORKDIR /scripts

CMD ["node"]