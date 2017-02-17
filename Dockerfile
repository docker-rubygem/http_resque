FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

RUN gem install http_resque --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["http_resque"]
CMD ["--help"]
