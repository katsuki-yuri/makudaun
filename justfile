#!/usr/bin/env just --justfile

release:
  cargo build --release && mv ./target/release/makudaun ./

lint:
  cargo clippy

format:
	cargo fmt

bin:
  cargo run -- convert --file readme.md