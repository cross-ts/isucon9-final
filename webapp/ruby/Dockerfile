FROM ruby

ENV TZ "Asia/Tokyo"

RUN mkdir -p /opt/webapp && \
    gem install \
      bundler:1.17.2
WORKDIR /opt/webapp

CMD ["bash", "-x", "entrypoint.sh"]
