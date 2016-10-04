FROM golang:1.7-alpine

MAINTAINER Sinan Goo <sinan1@gmx.de>

ENV GOPATH /go
ENV GOBIN /go/bin
RUN mkdir -p /go/src/
WORKDIR /go/src/

RUN apk add --update git
RUN go get github.com/nasoym/goexpose

WORKDIR /go/src/github.com/nasoym/goexpose
RUN go install cmd/goexpose/goexpose.go

EXPOSE 8080

