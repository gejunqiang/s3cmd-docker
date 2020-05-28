FROM alpine:3.7

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && apk add bash curl python3 && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    apk add py-dateutil && \
    curl -#sSL https://github.com/s3tools/s3cmd/releases/download/v2.1.0/s3cmd-2.1.0.tar.gz | tar -xz -C /root

ADD s3.sh /usr/bin

RUN chmod +x /usr/bin/s3.sh && ln -s /usr/bin/s3.sh /usr/bin/s3

CMD ["bash"]