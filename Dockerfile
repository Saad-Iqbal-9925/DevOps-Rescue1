FROM node:20-alpine

WORKDIR /app

COPY package.json ./

RUN npm install --omit=dev --omit=optional && npm cache clean --force

COPY index.js ./

EXPOSE 3000

CMD ["node", "index.js"]