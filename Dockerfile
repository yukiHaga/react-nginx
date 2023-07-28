FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

# CMDではンテナを起動したタイミングで、コンテナの中で実行したいコマンドを実行するため
CMD ["npm", "start"]