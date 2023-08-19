FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5173
ENV REACT_APP_API_URL=http://localhost:5173
CMD ["npm", "run", "start"]
