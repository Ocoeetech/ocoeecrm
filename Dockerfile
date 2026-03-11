FROM node:18

WORKDIR /app

RUN apt-get update && apt-get install -y python3 make g++

COPY package*.json ./
RUN npm install --legacy-peer-deps

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm","run","start"]
