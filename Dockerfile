FROM gcr.io/kaniko-project/executor:latest

USER 0

RUN apk add --no-cache curl

USER 1000