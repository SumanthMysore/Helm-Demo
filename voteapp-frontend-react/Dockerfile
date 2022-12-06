# FROM nginx
# COPY build /usr/share/nginx/html


# FROM node:18-alpine3.15

# WORKDIR /app

# COPY . .

# RUN npm install --legacy-peer-deps

# EXPOSE 3000

# CMD ["npm", "run", "start"]




FROM node:16-alpine3.15 AS build-stage
WORKDIR /app
COPY . .
RUN npm ci --legacy-peer-deps
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=build-stage /app/build /usr/share/nginx/html
