# Ingress NGINX Controller (WASM) example

PoC running WASM inside NGINX Ingress Controller.

## Setup

- Follow <https://github.com/markdingram/ingress-nginx/commit/0ccdc763ed4c417066f3953eaf94ffeb0279e0da> to build a local Ingress NGINX container with WASM support

- Install Kind, Rust, Helm etc

- Add to /etc/hosts

    ```
    ::1       kind.internal
    127.0.0.1 kind.internal
    ```

- Run `make all`


- http://kind.internal/ should show the `kuard` page


- Check for header `Hello_wasm: 1` !

