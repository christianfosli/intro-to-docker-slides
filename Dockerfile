FROM node:lts AS builder
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build
# CSS assets are not automatically included. See issue #389 on github.com/snowpackjs
RUN cp -r ./node_modules/reveal.js/dist/theme/fonts ./build/web_modules/revealjs/dist/theme/

FROM nginx AS final
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80
