FROM node:alpine

WORKDIR '/app'

# only rebuild the image if we make changes to the 
# package.json & not if we make changes to the src code 
# in index
COPY package.json .
RUN npm install
COPY . .  

CMD ["npm", "start"]