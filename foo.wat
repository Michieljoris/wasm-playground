(module
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (import "env" "memory" (memory (;0;) 0))
  (import "env" "__indirect_function_table" (table (;0;) 0 funcref))
  (import "env" "__memory_base" (global (;0;) i32))
  (import "env" "__table_base" (global (;1;) i32))
  (func $__wasm_call_ctors (type 0)
    call $__wasm_apply_relocs)
  (func $__wasm_apply_relocs (type 0))
  (func $fox (type 1) (result i32)
    (local i32)
    i32.const 999999
    local.set 0
    local.get 0
    return)
  (global (;2;) i32 (i32.const 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__wasm_apply_relocs" (func $__wasm_apply_relocs))
  (export "fox" (func $fox))
  (export "__dso_handle" (global 2)))
