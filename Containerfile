FROM oven/bun:1.4.4

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/unitreign/ocean-flame.git /home/bun/ocean-flame
WORKDIR /home/bun/ocean-flame

RUN bun install

EXPOSE 5173
CMD [ "bun",  "run", "dev", "--host"]
