(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (result i32)))
  (func $__wasm_call_ctors (type 0))
  (func $printNIntegers (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    i32.const 20
    i32.add
    local.get 1
    i32.store
    local.get 2
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=28
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 2
        i32.load offset=20
        local.tee 0
        i32.const 4
        i32.add
        i32.store offset=20
        local.get 2
        local.get 0
        i32.load
        i32.store offset=12
        local.get 2
        local.get 2
        i32.load offset=24
        local.get 2
        i32.load offset=12
        i32.add
        i32.store offset=24
        local.get 2
        local.get 2
        i32.load offset=16
        i32.const 1
        i32.add
        i32.store offset=16
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 20
    i32.add
    drop
    local.get 2
    i32.load offset=24)
  (func $test (type 2) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 4
    i32.store offset=8
    local.get 0
    i32.const 3
    i32.store offset=4
    local.get 0
    i32.const 2
    i32.store
    i32.const 1
    local.get 0
    call $printNIntegers
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66560))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 66560))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "printNIntegers" (func $printNIntegers))
  (export "test" (func $test))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6)))
