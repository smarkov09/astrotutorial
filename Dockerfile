FROM node:lts AS runtime
WORKDIR /app

COPY . .

RUN npm install
RUN npm run build


ENV PORT=8080
EXPOSE 8080
CMD ["npm", "start"]