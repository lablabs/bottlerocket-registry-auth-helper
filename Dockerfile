FROM alpine:3.19

RUN apk add --no-cache\
    jq=jq-1.7.1-r0.apk \
    aws-cli=aws-cli-2.13.25-r0.apk

COPY --chmod=0755 src/entrypoint.sh /tmp/entrypoint.sh
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/tmp/entrypoint.sh"]
