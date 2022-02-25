FROM alpine:3.13.0

COPY virus-interpreter .

RUN apk add openjdk11 python3 && \
    wget https://github.com/hartwigmedical/hmftools/releases/download/virus-interpreter-v1.2/virus-interpreter.jar && \
    mkdir /usr/local/share/virus-interpreter/ && \
    mv virus-interpreter.jar /usr/local/share/virus-interpreter/ && \
    mv virus-interpreter /usr/local/share/virus-interpreter/ && \
    ln -s /usr/local/share/virus-interpreter/virus-interpreter /usr/local/bin/virus-interpreter
