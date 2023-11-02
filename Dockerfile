FROM alpine:latest
RUN apk add --no-cache mysql-server
ENTRYPOINT ["mysql"]
