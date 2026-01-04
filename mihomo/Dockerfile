ARG BUILD_FROM
FROM metacubex/mihomo:v1.19.8

RUN apk add --no-cache bash ca-certificates iptables iproute2

WORKDIR /app
COPY start-mihomo.sh /app/start-mihomo.sh
COPY mihomo-default.yaml /app/mihomo-default.yaml

RUN chmod +x /app/start-mihomo.sh
CMD ["/app/start-mihomo.sh"]
