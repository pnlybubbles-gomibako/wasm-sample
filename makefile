sample.wasm: sample.wast
	sexpr-wasm sample.wast -o sample.wasm
sample.wast: sample.s
	s2wasm sample.s > sample.wast
sample.s: sample.bc
	/usr/local/opt/llvm/bin/llc -asm-verbose=false -o sample.s sample.bc
sample.bc: sample.cpp
	clang++-3.8 -emit-llvm --target=wasm32 -Oz sample.cpp -c -o sample.bc
.PHONY: clean
clean:
	rm -f sample.bc sample.s sample.wast sample.wasm
