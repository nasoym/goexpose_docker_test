FROM golang:1.7-alpine

ENV GOPATH /go
ENV GOBIN /go/bin
RUN mkdir -p /go/src/
WORKDIR /go/src/

RUN apk add --update git
RUN go get github.com/nasoym/goexpose

WORKDIR /go/src/github.com/nasoym/goexpose
RUN go install cmd/goexpose/goexpose.go

WORKDIR /scripts

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8000


