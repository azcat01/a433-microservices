FROM node:18-alpine

WORKDIR /src

COPY package*.json ./
RUN npm install 

COPY . .

ENV PORT=3000
ENV AMQP_URL="amqp://localhost:5672"

RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

CMD ["node", "index.js"]

EXPOSE 3000
