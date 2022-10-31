# Humidefi Parachain 

A  [Cumulus](https://github.com/paritytech/cumulus/)-based Substrate Parachain node for Humidefi.

👉 Learn more about parachains [here](https://wiki.polkadot.network/docs/learn-parachains), and
parathreads [here](https://wiki.polkadot.network/docs/learn-parathreads).


🧙 Learn about how to use this template and run your own parachain testnet for it in the
[Devhub Cumulus Tutorial](https://docs.substrate.io/tutorials/v3/cumulus/start-relay/).

## Local Setup

Relay Chain
```sh
# Clone 
$ git clone https://github.com/paritytech/polkadot
$ cd polkadot
# Compile Polkadot with the real overseer feature
$ cargo build --release
# Generate a raw chain spec
$ ./target/release/polkadot build-spec --chain rococo-local --disable-default-bootnode --raw > rococo-local-cfde.json
# Alice
$ ./target/release/polkadot --chain rococo-local-cfde.json --alice --tmp
# Bob (In a separate terminal)
$ ./target/release/polkadot --chain rococo-local-cfde.json --bob --tmp --port 30334
```

Parachain
```sh
# Clone
$ git clone https://github.com/hgminerva/humidefi-parachain.git
$ cd humidefi-parachain
# Compile
$ cargo build --release
# Export genesis state
$ ./target/release/parachain-template-node export-genesis-state > genesis-state
# Export genesis wasm
$ ./target/release/parachain-template-node export-genesis-wasm > genesis-wasm
# Collator1
$ ./target/release/parachain-template-node --collator --alice --force-authoring --tmp --port 40335 --ws-port 9946 -- --execution wasm --chain ../polkadot/rococo-local-cfde.json --port 30335
# Collator2
$ ./target/release/parachain-template-node --collator --bob --force-authoring --tmp --port 40336 --ws-port 9947 -- --execution wasm --chain ../polkadot/rococo-local-cfde.json --port 30336
# Parachain Full Node 1
$ ./target/release/parachain-template-node --tmp --port 40337 --ws-port 9948 -- --execution wasm --chain ../polkadot/rococo-local-cfde.json --port 30337
```