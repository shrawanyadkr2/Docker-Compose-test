## Manual Installation

- Install Node.js (locally)
- clone the repo
- install dependencies (npm install)
- start the DB locally
  - docker run -e POSTGRES_PASSWORD=mypassword -d -p 5432:5432 postgres
  - go to the neon console and make a data base and copy the string
- change the .env and update your DB credential
- npx prisma migrate dev
- npx prisma generate
- npm run build
- npm run start

## Docker Installation

- Install Docker
- Creaye a Network - docker network create user_project
- start Postgres
  - docker run --network user_project --name postgres -e POSTGRES_PASSWORD=ky@6299 -d -p 5432:5432 postgres
- build the image - `docker build --network=host -t user-project .`
- start the image - `docker run -e DATABASE_URL=postgresql://postgres:sky@6299@localhost:5432/postgres --network user_project -p 3000:3000 user-project`

## Docker Compose installation

- install Docker, docker-compose
- Run `docker-compose up`
