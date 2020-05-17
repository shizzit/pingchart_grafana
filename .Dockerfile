FROM alpine

RUN apk update && apk upgrade
RUN apk add bash
RUN apk add curl

COPY loop.sh /
COPY ping.sh / 

CMD sleep 5 && bash /loop.sh
