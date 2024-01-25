
.PHONY: all
all: nginx cluster ingress app


.PHONY: nginx
nginx: ingress/rust/target/wasm32-wasi/release/proxy_wasm_example_http_headers.wasm
	cd ingress && docker build . --tag nginx:wasm

ingress/rust/target/wasm32-wasi/release/proxy_wasm_example_http_headers.wasm:
	cd ingress/rust && rustup target add wasm32-wasi && cargo build --target wasm32-wasi --release


.PHONY: cluster
cluster:
	kind create cluster --config cluster.yaml
	kind load docker-image nginx:wasm


.PHONY: ingress
ingress:
	helm repo add ingress-nginx  https://kubernetes.github.io/ingress-nginx
	helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx --values ingress-nginx-values.yaml


.PHONY: app
app:
	# wait for ingress
	sleep 10 && kubectl apply -f kuard.yaml


