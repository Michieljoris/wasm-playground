; ModuleID = 'add.c'
source_filename = "add.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32"

@__heap_base = external global i8, align 1
@heap_pointer = hidden global i8* @__heap_base, align 4
@__data_end = external global i8, align 1
@data_pointer = hidden global i8* @__data_end, align 4

; Function Attrs: noinline nounwind optnone
define hidden i8* @heap() #0 {
  %1 = load i8*, i8** @heap_pointer, align 4
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone
define hidden i8* @data() #0 {
  %1 = load i8*, i8** @data_pointer, align 4
  ret i8* %1
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0 (https://github.com/llvm/llvm-project.git 7caa9caa80fe508a618095fea6da2c680651fb3a)"}
