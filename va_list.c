typedef signed int i32;
#include <stdarg.h>

/* extern i32 print_num( i32 n ); */

int printNIntegers( int n, ...)
{ int result = 0;
    va_list l;
    va_start(l,n);
    for (int i=0; i< n; i++)
    {
        int arg = va_arg(l, int);
        result += arg;
        /* print_num(arg); */
    }
    va_end(l);
    return result;
}

int test() {
  return printNIntegers(3,2,3,4);
}

// Filename: add.c
/* int add(int a, int b) { */
/*   print_num(123); */
/*   return a + b; */
/* } */

/* int foo(int a, int b) { */
/*   return a + b; */
/* } */
