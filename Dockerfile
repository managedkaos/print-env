FROM ubuntu:18.10

LABEL "com.github.actions.name"="Print Env"
LABEL "com.github.actions.description"="Print the environment for this event"
LABEL "com.github.actions.icon"="briefcase"

RUN apt-get update
RUN apt-get -y install jq

COPY entrypoint.sh /entrypoint.sh
COPY sample_push_event.json /sample_push_event.json

ENTRYPOINT ["/entrypoint.sh"]
