FROM alpine:latest
WORKDIR /app
RUN apk add --no-cache unzip curl ca-certificates && \
    curl -L -o xray.zip https://github.com/XTLS/Xray-core/releases/download/v26.3.27/Xray-linux-64.zip && \
    unzip xray.zip && rm xray.zip && chmod +x xray
COPY config.json .
CMD ["sh", "-c", "sed -i s/PORT_PLACEHOLDER/${PORT:-8080}/g config.json && ./xray run -c config.json"]
