FROM alpine:3 AS codeclimate

ENV container docker

WORKDIR /work

COPY local/engine.json ./engine.json
COPY local/codeclimate-ansible-lint local/codeclimate-format.py /usr/local/bin/

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]
RUN adduser --uid 9000 --gecos "" --disabled-password app \
  && apk --no-cache add --virtual build-deps \
  bc~=1 \
  cargo~=1 \
  gcc~=10 \
  jq~=1 \
  libffi-dev~=3 \
  musl-dev~=1 \
  openssl-dev~=1 \
  python3-dev~=3 \
  rust~=1 \
  && apk --no-cache add \
  git~=2 \
  python3~=3 \
  py3-pip~=20 \
  && pip3 install --no-cache-dir \
  "ansible==3.*" \
  && pip3 install --no-cache-dir --no-compile \
  "ansible-lint==5.*" \
  && ln -sf ansible /usr/bin/ansible-config \
  && ln -sf ansible /usr/bin/ansible-console \
  && ln -sf ansible /usr/bin/ansible-doc \
  && ln -sf ansible /usr/bin/ansible-galaxy \
  && ln -sf ansible /usr/bin/ansible-inventory \
  && ln -sf ansible /usr/bin/ansible-playbook \
  && ln -sf ansible /usr/bin/ansible-pull \
  && ln -sf ansible /usr/bin/ansible-test \
  && ln -sf ansible /usr/bin/ansible-vault \
  && find /usr/lib/ -name '__pycache__' -print0 | xargs -0 -n1 rm -rf \
  && find /usr/lib/ -name '*.pyc' -print0 | xargs -0 -n1 rm -rf \
  && VERSION="$(ansible-lint --version | sed 's/^[^ ]* //' | sed 's/ .*$//')" \
  && jq --arg version "$VERSION" '.version = $version' > /engine.json < ./engine.json \
  && rm ./engine.json \
  && apk del build-deps

USER app

VOLUME /code
WORKDIR /code

CMD ["codeclimate-ansible-lint"]

ARG BUILD_DATE
ARG REVISION
ARG VERSION

LABEL maintainer="Megabyte Labs <help@megabyte.space>"
LABEL org.opencontainers.image.authors="Brian Zalewski <brian@megabyte.space>"
LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.description="An Ansible Lint slim container and a CodeClimate engine container for GitLab CI"
LABEL org.opencontainers.image.documentation="https://github.com/megabyte-labs/codeclimate-ansible-lint/blob/master/README.md"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.source="https://github.com/megabyte-labs/codeclimate-ansible-lint.git"
LABEL org.opencontainers.image.url="https://megabyte.space"
LABEL org.opencontainers.image.vendor="Megabyte Labs"
LABEL org.opencontainers.image.version=$VERSION
LABEL space.megabyte.type="codeclimate"

FROM codeclimate AS ansible-lint

WORKDIR /work

USER root

RUN rm /engine.json /usr/local/bin/codeclimate-ansible-lint /usr/local/bin/codeclimate-format.py

ENTRYPOINT ["ansible-lint"]
CMD ["--version"]

LABEL space.megabyte.type="linter"
