FROM golang:1.11

#USER nobody
USER root

RUN mkdir -p /go/src/github.com/openshift/golang-ex
WORKDIR /go/src/github.com/openshift/golang-ex
USER 1001

COPY --chown=1001:0 . /go/src/github.com/openshift/golang-ex
RUN go build

CMD ["./golang-ex"]
