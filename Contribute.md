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


## Docker Compose installation 
