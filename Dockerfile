FROM alpine:3.19

RUN apk add \
    jq \
    aws-cli

COPY --chmod=0755 src/entrypoint.sh /tmp/entrypoint.sh
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/tmp/entrypoint.sh"]