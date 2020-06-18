// import * as example from './add.wasm';

// console.log(example.add(2,3));

const fs = require('fs');

async function start() {
    const buf = fs.readFileSync('./add.wasm');
    const lib = await WebAssembly.instantiate(new Uint8Array(buf)).
          then(res => res.instance.exports);
    console.log(lib.add(1,2));
}


start();
