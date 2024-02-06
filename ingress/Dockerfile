#See <https://github.com/markdingram/ingress-nginx/commit/0ccdc763ed4c417066f3953eaf94ffeb0279e0da> for how to build the controller image with WASM support
FROM gcr.io/k8s-staging-ingress-nginx/controller:v1.9.5

ADD rust/target/wasm32-wasi/release/proxy_wasm_example_http_headers.wasm /plugins/
