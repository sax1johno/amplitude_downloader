FROM alpine:3.7
RUN apk --update add postgresql-client jq curl file bash && rm -rf /var/cache/apk/*

ENV DB_HOST host
ENV DB_USER user
ENV DB_PASSWORD password
ENV DB_PORT 5432
ENV DB_DATABASE_NAME db

ENV AMPLITUDE_USERNAME abcd
ENV AMPLITUDE_PASSWORD abcd

ENV START_DATE ""
ENV END_DATE ""

RUN mkdir -p /usr/src
COPY run.sh /usr/src
COPY filter.jq /usr/src

WORKDIR /usr/src

RUN chmod 755 run.sh

ENTRYPOINT [ "/usr/src/run.sh" ]