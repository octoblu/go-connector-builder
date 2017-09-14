FROM octoblu/meshblu-connector-builder:linux-x64

ENV PATH="${PATH}:/usr/local/go/bin"

RUN curl \
  --location \
  --output /go.tar.gz \
  --silent \
  --fail \
  https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz \
  && tar -C /usr/local -xzf /go.tar.gz \
  && rm -rf /go.tar.gz
