FROM gcr.io/kaniko-project/executor:latest

USER root
RUN apk add --no-cache curl

USER 1000