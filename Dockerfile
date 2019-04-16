FROM alpine

LABEL "maintainer"="managedkaos"
LABEL "repository"="https://github.com/managedkaos/print-env"
LABEL "com.github.actions.name"="Environment Printer"
LABEL "com.github.actions.description"="Prints environment variables and $GITHUB_EVENT_PATH to the log."
LABEL "com.github.actions.icon"="briefcase"
LABEL "com.github.actions.color"="purple"

RUN apk add --no-cache \
        bash \
        jq && \
        which bash && \
        which jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
