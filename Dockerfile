FROM debian:9.5-slim

LABEL "com.github.actions.name"="Mirror, Extract, and Push"
LABEL "com.github.actions.description"="Mirror ZIP or other archives to a git repo and track changes"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/octocat/hello-world"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Nelson Chen <crazysim@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
