FROM alpine:3.13.0

COPY virus-interpreter .

RUN apk add openjdk11 python3 && \
    wget https://github.com/hartwigmedical/hmftools/releases/download/virus-interpreter-v1.0/virus-interpreter_v1.0.jar && \
    mkdir /usr/local/share/virus-interpreter/ && \
    mv virus-interpreter_v1.0.jar /usr/local/share/virus-interpreter/ && \
    mv virus-interpreter /usr/local/share/virus-interpreter/ && \
    ln -s /usr/local/share/virus-interpreter/virus-interpreter /usr/local/bin/virus-interpreter