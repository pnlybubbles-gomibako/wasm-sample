# wasm-sample

cpp to WebAssembly sample

# Requirements

* Latest Google Chrome Canary ([chrome://flags/#enable-webassembly](chrome://flags/#enable-webassembly))

* llvm (`-DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD=WebAssembly`)

* clang++-3.8 (llvm38 --with-clang)

* [https://github.com/WebAssembly/binaryen](https://github.com/WebAssembly/binaryen)

* [https://github.com/WebAssembly/sexpr-wasm-prototype](https://github.com/WebAssembly/sexpr-wasm-prototype)

* Simple web server (ex: http-server)

# Usage

```
make
```

and open localhost in Chrome.
