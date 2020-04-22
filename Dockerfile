FROM alpine:latest

LABEL maintainer="Jan Sepke"
LABEL name="github-release-checker"
LABEL docker.cmd="docker run jansepke/github-release-checker user/repository version"

RUN apk add --no-cache curl jq

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
