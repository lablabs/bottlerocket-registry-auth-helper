FROM alpine:3.19

RUN apk add --no-cache\
    jq=1.7.1-r0 \
    aws-cli=2.13.25-r0

COPY --chmod=0755 src/entrypoint.sh /tmp/entrypoint.sh
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/tmp/entrypoint.sh"]
