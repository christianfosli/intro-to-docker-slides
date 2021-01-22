FROM rust:1.49-alpine as build
WORKDIR /usr/src/helloworld
COPY . .
RUN cargo install --path .

FROM alpine
COPY --from=build /usr/local/cargo/bin/helloworld /usr/local/bin/helloworld
CMD ["helloworld"]
