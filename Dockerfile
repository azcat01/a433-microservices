FROM node:18-alpine

WORKDIR /src

COPY package*.json ./

RUN npm install --unsafe-perm

COPY . .

ENV PORT=3001
ENV AMQP_URL="amqp://localhost:5672"

CMD ["node", "index.js"]

EXPOSE 3001
