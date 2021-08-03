FROM golang:1.16.5 AS builder
WORKDIR /Users/apple/go/src/github.com/ngocchien/demo
COPY . .
RUN go build -o main
FROM alpine:latest
WORKDIR /root/
COPY from=builder /Users/apple/go/src/github.com/ngocchien/demo/main
CMD ["./main"]