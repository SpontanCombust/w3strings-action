FROM debian:sid-slim

WORKDIR /w3strings
RUN apt-get update
RUN apt-get install -y curl unzip
RUN curl -LJO https://cdn.discordapp.com/attachments/940118400045301760/940675945671581716/w3strings.zip
RUN unzip w3strings.zip
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
