FROM alpine:3.20
RUN apk add --update --no-cache bash ca-certificates curl git jq openssh kustomize
RUN ["bin/sh", "-c", "mkdir -p /src"]
COPY ["src", "/src/"]
ENTRYPOINT ["/src/entrypoint.sh"]
