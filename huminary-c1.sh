./target/release/huminary-node \
--name Huminary1 \
--collator \
--force-authoring \
<<<<<<< HEAD:collator1.sh
--chain raw-parachain-chainspec.json \
--base-path /home/ubuntu/s3bucket/parachain/collator1 \
--port 30333 \
--ws-port 9944 \
--rpc-port 9933 \
=======
--chain raw-huminary-chainspec.json \
--base-path /tmp/huminary/collator1 \
--port 30335 \
--ws-port 9946 \
--rpc-port 9935 \
>>>>>>> b913dff7d9e20a9d2b95fe07e59b885a22ddd1a8:huminary-c1.sh
--rpc-external \
--rpc-methods Unsafe \
--rpc-cors all \
-- \
--execution wasm \
--chain rococo-local-cfde.json \
--port 30343 \
--ws-port 9977 \
--bootnodes /ip4/91.200.100.103/tcp/30333/p2p/12D3KooWEyoppNCUx8Yx66oV9fJnriXwCcXwDDUA2kj6vnc6iDEp
