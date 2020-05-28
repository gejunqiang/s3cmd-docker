FROM alpine:3.7

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && apk add bash curl python3 && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    apk add py-dateutil && \
    curl -#sSL https://xiaopal.nos-eastchina1.126.net/dl/s3cmd-2.1.0.tar.gz | tar -xz -C /root

ADD s3.sh /usr/bin

RUN chmod +x /usr/bin/s3.sh && ln -s /usr/bin/s3.sh /usr/bin/s3

CMD ["bash"]