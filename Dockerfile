FROM golang

WORKDIR /go/src/app
COPY ./go-scim .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]