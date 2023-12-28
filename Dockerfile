FROM node:16-alpine
WORKDIR /app
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json
COPY . /app
RUN npm install
RUN npm run build
EXPOSE 8091
CMD [ "npm", "start" ]

