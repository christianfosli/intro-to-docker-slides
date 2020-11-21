FROM node:lts AS builder
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx AS final
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
