// import * as example from './add.wasm';

// console.log(example.add(2,3));

const fs = require('fs');

var str = "";

var memory;

var page_size = 60 * 1024;
var max_page_count = 10;
var max_size = page_size * max_page_count;
var initial_page_count = 2
var page_count = initial_page_count;

// var i8, i16, i32;

var importObject = {
    env: { _putchar: arg => { if (arg == 10) { console.log(str); str = ""; }
                              else str = str + String.fromCharCode(arg);
                              // process.stdout.write(String.fromCharCode(arg))
                            },
           // free_memory: () => 0,
           // get_memory:  () =>  {memory = new WebAssembly.Memory({initial:initial_page_count,
           //                                                        maximum:max_page_count});
           //                       i8 = new Uint8Array(memory.buffer);
           //                       i16 = new Uint16Array(memory.buffer);
           //                       i32 = new Uint32Array(memory.buffer);
           //                       // i32[10] = 255;
           //                       // i32[11] = 257;
           //                       // console.log(i32.length);
           //                       // console.log("i32[10]", i32[10]);
           //                       // console.log("i32[11]", i32[11]);
           //                       return 0; },
           grow_memory: () => { console.log("grow_memory");
                                if (++page_count > max_page_count) {
                                    printf("Error: can't allocate memory beyond max\n");
                                    // throw "Error: can't allocate memory beyond max\n";
                                    return 0;
                                }
                                memory = memory.grow(1);
                                // i8 = new Uint8Array(memory.buffer);
                                // i16 = new Uint8Array(memory.buffer);
                                // i32 = new Uint8Array(memory.buffer);
                                return 1; },
           // get_byte_at:  (a1) =>  i8[a1],
           // set_byte_at:  (a, v) => i8[a] = v,

           // get_word_at:  (a1) =>  i16[a1],
           // set_word_at:  (a, v) => i16[a] = v,

           // get_dword_at:  (a1) =>  i32[a1],
           // set_dword_at:  (a, v) => i32[a] = v,

           get_mem_end:  () => { console.log("get_mem_end");
                                 return page_count * page_size},
           // copy_byte: (from_p, to_p) => { console.log("copy_byte ", from_p, to_p);
           //                                i8.copyWithin(to_p, from_p, 1);
           //                              }

           memory:  new WebAssembly.Memory({initial: initial_page_count,
                                            maximum: max_page_count})
         }
};

async function start() {
    const buf = fs.readFileSync('./out/lispy.wasm');
    const lib = await WebAssembly.instantiate(new Uint8Array(buf), importObject).
          then(res => res.instance.exports);
    lib.init_malloc();
    console.log(lib.test());
    // console.log("heap_base: ", lib.__heap_base);
    // console.log(i8[0].toString(2), i8[1].toString(2), i8[2].toString(2), i8[3].toString(2), i8[4].toString(2).toString(2), i8[5].toString(2), i8[6], i8[7]);
    // console.log(i16[0].toString(2), i16[1].toString(2), i16[2].toString(2), i16[3].toString(2), i16[4].toString(2));
    // console.log(i32[0].toString(2), i32[1].toString(2), i32[2].toString(2), i32[3].toString(2));
    // let size = 4;
    // console.log(size +  - size % 4)
}


start();
