# Kube Nginx Experiments

Starts a Kind Cluster & install Ingress Nginx + Kuard to test adding extensions to Nginx

## Setup

- Install Kind, Rust, Helm etc

- Add to /etc/hosts

    ```
    ::1       kind.internal
    127.0.0.1 kind.internal
    ```

- Run `make all`


- http://kind.internal/ should show the `kuard` page



## Extensions 

- Lua
- Wasm (via https://github.com/Kong/ngx_wasm_module/blob/main/docs/INSTALL.md#build-examples)
- ?
