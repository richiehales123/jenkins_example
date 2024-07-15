FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . . 

ENV PORT=8080

EXPOSE 8080

CMD [ "node", "index.js" ]



# Run docker build
# docker build -t richie/demoapp:1.0 .

# Start container on Port 8080
# docker run -d -p 8080:8080 richie/demoapp:1.0