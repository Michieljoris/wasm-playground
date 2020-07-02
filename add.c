typedef signed int i32;
#include <stdarg.h>

/* extern i32 print_num( i32 n ); */

/* int printNIntegers( int n, ...) */
/* { int result = 0; */
/*     va_list l; */
/*     va_start(l,n); */
/*     for (int i=0; i< n; i++) */
/*     { */
/*         int arg = va_arg(l, int); */
/*         result += arg; */
/*         /\* print_num(arg); *\/ */
/*     } */
/*     va_end(l); */
/*     return result; */
/* } */

/* int test() { */
/*   return printNIntegers(1,2,3,4); */
/* } */

// Filename: add.c
extern char __heap_base;
char* heap_pointer = &__heap_base;
char* heap() {
  return heap_pointer;
}

extern char __data_end;
char* data_pointer = &__data_end;
char* data() {
  return data_pointer;
}

/* int foo(int a, int b) { */
/*   return a + b; */
/* } */
