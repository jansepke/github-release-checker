FROM alpine:latest

LABEL maintainer="Jan Sepke"
LABEL name="github-release-checker"
LABEL docker.cmd="docker run jansepke/github-release-checker user/repository version"

RUN apk add --no-cache curl jq

COPY "github-release-checker" "/bin/github-release-checker"
ENTRYPOINT ["github-release-checker"]
CMD ["--help"]
