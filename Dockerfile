FROM node:10

WORKDIR /app
COPY ./package*.json ./
COPY ./bower.json ./.bowerrc ./

RUN npm install
RUN npm run components

COPY . .

ENV PORT=3000
EXPOSE 3000

CMD ["npm","start"]
