FROM alpine:latest

COPY wait-for-200.sh /
RUN chmod +x /wait-for-200.sh

RUN apk add --update bash curl && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/wait-for-200.sh"]
