FROM debian:9.5-slim

LABEL "com.github.actions.name"="Mirror ZIP, Extract, and Push"
LABEL "com.github.actions.description"="Mirror ZIP, Extract, Commit to a git repo and track changes"
LABEL "com.github.actions.icon"="refresh-ccw"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/octocat/hello-world"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Nelson Chen <crazysim@gmail.com>"

RUN apt-get update && \
  apt-get install unzip curl git -y && \
  apt-get clean -y

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
