FROM node:22-alpine AS build
WORKDIR /app
RUN npm config set registry https://registry.npmmirror.com
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine AS runtime
COPY default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html
