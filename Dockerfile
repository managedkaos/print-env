FROM python:3

LABEL "com.github.actions.name"="Print Env"
LABEL "com.github.actions.description"="Print the environment for this event"
LABEL "com.github.actions.icon"="briefcase"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
