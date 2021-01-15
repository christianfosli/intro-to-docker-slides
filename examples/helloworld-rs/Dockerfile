FROM rust:1.49 AS build
WORKDIR usr/src/helloworld-rs
COPY . .
RUN cargo install --path .

FROM debian:buster-slim
COPY --from=build /usr/local/cargo/bin/helloworld-rs /usr/local/bin/helloworld-rs
CMD ["helloworld-rs"]
