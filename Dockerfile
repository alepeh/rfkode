FROM alpine:3.8
LABEL maintainer "Alexander Pehm <alexander@alexanderpehm.at>"

RUN apk add --no-cache nodejs npm

COPY server ./
RUN npm install
EXPOSE 8080
ENTRYPOINT ["npm","run","start"]