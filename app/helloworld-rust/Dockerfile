FROM rust:1.65.0-slim-buster as builder

COPY . /src

WORKDIR /src

RUN cargo build --release

FROM debian:buster-slim

COPY --from=builder /src/target/release/helloworld-rust /helloworld-rust

CMD ["/helloworld-rust"]
