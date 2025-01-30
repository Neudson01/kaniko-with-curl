FROM alpine:latest AS builder

RUN apk add --no-cache curl kubectl

FROM gcr.io/kaniko-project/executor:latest

COPY --from=builder /usr/bin/curl /usr/bin/curl
COPY --from=builder /usr/bin/kubectl /usr/bin/kubectl
