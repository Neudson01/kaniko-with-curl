FROM gcr.io/kaniko-project/executor:latest

RUN apk add --no-cache curl

USER 1000