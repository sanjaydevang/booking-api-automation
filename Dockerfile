FROM node:18-alpine

WORKDIR /app

RUN npm install -g newman

COPY postman ./postman

CMD ["newman", "run", "postman/Booking API Automation.postman_collection.json", "-e", "postman/Book-Env.postman_environment.json"]
