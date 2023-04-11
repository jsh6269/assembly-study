#include <stdio.h>
int main() {
    int var1 = 25, var2 = 37, res;
    asm(
    "movl %1, %%eax; \
     addl %2, %%eax; \
     movl %%eax, %0;"
    : "=r"(res) : "r"(var1), "r"(var2) : "%eax");
    
    printf("result = %d", res);
    return 0;
}  