FROM google/dart

ENV DTA_DISABLE_LINTER=""
ENV DTA_DISABLE_ANALYZER=""
ENV DTA_DISABLE_TESTS=""

LABEL "maintainer"="Igor Borges <igor@borges.me>"
LABEL "repository"="https://github.com/Igor1201/dart-test-action"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Dart Test"
LABEL "com.github.actions.description"="A GitHub action to test a Dart package"
LABEL "com.github.actions.icon"="list"
LABEL "com.github.actions.color"="green"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
