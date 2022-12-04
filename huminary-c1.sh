# make the chain-spec
./target/release/huminary-node build-spec --disable-default-bootnode > huminary-chainspec-v2.json

# make the raw chain-spec
./target/release/huminary-node build-spec --chain huminary-chainspec-v2.json --disable-default-bootnode --raw > raw-huminary-chainspec-v2.json

# run the node using the raw chain-spec
./target/release/huminary-node \
--name Huminary \
--collator \
--force-authoring \
--chain raw-huminary-chainspec-v2.json \
--base-path /tmp/huminary/collator1 \
--port 30335 \
--ws-port 9946 \
--rpc-external \
--rpc-methods Unsafe \
--rpc-cors all \
-- \
--execution wasm \
--chain rococo-local-cfd2.json \
--port 30343 \
--ws-port 9977 \

#--bootnodes /ip4/91.200.100.103/tcp/30333/p2p/12D3KooWEyoppNCUx8Yx66oV9fJnriXwCcXwDDUA2kj6vnc6iDEp
