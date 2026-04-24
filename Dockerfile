FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        iputils-ping \
        iproute2 \
        iptables \
        net-tools \
        curl \
        ca-certificates \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]
