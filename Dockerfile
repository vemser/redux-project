# env: development

FROM node:13-alpine
WORKDIR /app

#ENV PATH /app/node_modules/.bin:$PATH

COPY package*.json /app

RUN npm install --silent
RUN npm install react-scripts -g --silent

COPY . /app
#RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]