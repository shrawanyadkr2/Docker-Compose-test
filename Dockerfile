FROM node:20-alpine

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install 

COPY . .

ENV DATABASE_URL = postgresql://postgres:sky@6299@localhost:5432/postgres

RUN npx prisma migrate dev
RUN npx prisma generate
RUN npm run build

CMD [ "npm","start" ]