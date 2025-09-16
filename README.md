TASK 1

Clone Strapi repo using following commands: git clone https://github.com/shashankks07/strapi.git

cd strapi

install npm 

npx create-strapi-app@latest my-strapi-app 

cd my-strapi-app 

npm run develop

Open Admin Panel → http://localhost:1337/admin → Create Admin user.*
----------------------------------------------------------------------------------------------------------------------------------------------------
TASK 2

Open the Project folder in VS code

Create a Dockerfile

Run:
docker build --no-cache -t my-strapi-app .
docker run -it --rm -p 1337:1337 my-strapi-app

this will create a docker image and we can run the strapi application.

