./target/release/huminary-node \
--name Huminary2 \
--collator \
--force-authoring \
--chain raw-huminary-chainspec.json \
--base-path /tmp/huminary/collator2 \
--port 30336 \
--ws-port 9947 \
--rpc-port 9936 \
--rpc-external \
--rpc-methods Unsafe \
--rpc-cors all \
-- \
--execution wasm \
--chain rococo-local-cfd2.json \
--port 30343 \
--ws-port 9977 \

# --bootnodes /ip4/91.200.100.103/tcp/30333/p2p/12D3KooWEyoppNCUx8Yx66oV9fJnriXwCcXwDDUA2kj6vnc6iDEp