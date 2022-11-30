./target/release/huminary-node \
<<<<<<< HEAD
--name Huminary \
=======
--name Huminary001 \
>>>>>>> dbcd2b5 (Bootnode Humidefi Setup)
--collator \
--force-authoring \
--chain raw-huminary-chainspec.json \
--base-path /home/ubuntu/s3bucket/huminary/collator1 \
--rpc-external \
--rpc-methods Unsafe \
--rpc-cors all \
-- \
--execution wasm \
--chain rococo-local-cfd2.json \
--port 30343 \
--ws-port 9977 \
--bootnodes /ip4/91.200.100.103/tcp/30333/p2p/12D3KooWEyoppNCUx8Yx66oV9fJnriXwCcXwDDUA2kj6vnc6iDEp
