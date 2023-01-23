FROM alpine:3.16.2

LABEL org.opencontainers.image.authors="punkerside"

# instalando paquetes
RUN apk update && apk upgrade && apk add --no-cache \
  npm=8.10.0-r0

WORKDIR /app
CMD [ "npm", "install" ]