FROM node:14 AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install web-vitals

COPY . .

FROM node:14-alpine

WORKDIR /app

COPY --from=builder /app/ ./

CMD ["npm", "start"]

EXPOSE 3000

