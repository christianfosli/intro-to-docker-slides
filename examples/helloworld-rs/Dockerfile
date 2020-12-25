FROM rust:1.48 AS build
WORKDIR /src
COPY . .
RUN cargo install --path .

FROM debian:buster-slim
COPY --from=build /usr/local/cargo/bin/helloworld-rs /usr/local/bin/helloworld-rs
CMD ["helloworld-rs"]
