FROM ubuntu:22.04

RUN apt update && \
    apt install -y cowsay fortune netcat-openbsd

ENV PATH="/usr/games:${PATH}"

WORKDIR /app

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
