#include "module1.h"

#ifndef WASM

#include <stdio.h>
#define print printf
#else
void print(char* s, int n);

#endif //WASM

void *(memset)(void *s, int c, unsigned long n);
int main() {
    void* p = (void*)100;
    memset(p, 0, 1);
    print("%d\n", fox());
    print("%d\n", builtins[0]);
    return 0;
}
