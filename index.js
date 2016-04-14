var xhr = new XMLHttpRequest();
xhr.open('GET', 'sample.wasm', true);
xhr.responseType = 'arraybuffer';
xhr.onload = function() {
  var binary = xhr.response;
  var binarray = new Uint8Array(binary);
  var module = Wasm.instantiateModule(binarray);
  console.log(module.exports);
  var fib = module.exports.fib;
  var arr = [];
  for (var i = 0; i < 20; i++) {
    arr.push(fib(i));
  }
  console.log(arr);
};
xhr.send(null);
