FROM alpine:3.19

RUN apk add --no-cache\
    jq=1.7.1 \
    aws-cli=2.13.25

COPY --chmod=0755 src/entrypoint.sh /tmp/entrypoint.sh
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/tmp/entrypoint.sh"]
