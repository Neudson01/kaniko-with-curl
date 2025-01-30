FROM alpine:latest AS builder

RUN apk add --no-cache curl

FROM gcr.io/kaniko-project/executor:latest

COPY --from=builder /usr/bin/curl /usr/bin/curl
