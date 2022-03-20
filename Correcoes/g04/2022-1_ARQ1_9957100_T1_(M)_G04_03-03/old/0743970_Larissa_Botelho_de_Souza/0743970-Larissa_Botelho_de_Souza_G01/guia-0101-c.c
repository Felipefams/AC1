
// nome: Larissa Botelho  matrícula: 743970

#include <stdio.h>
#include <stdlib.h>

void dec2bin(int x){
    if(x == 0)
        printf("%d", x);
    else{
        dec2bin(x/2);
        printf("%d", x % 2); //imprime o resto da divisao por do numero por 2
    }
}

int main(){
    int a = 26; 
    int b = 55; 
    int c = 713; 
    int d = 312; 
    int e = 366; 

    printf("a %d = ", a);
    dec2bin(a);
    printf("\n");

    printf("b %d = ", b);
    dec2bin(b);
    printf("\n");

    printf("c %d = ", c);
    dec2bin(c);
    printf("\n");

    printf("d %d = ", d);
    dec2bin(d);
    printf("\n");

    printf("e %d = ", e);
    dec2bin(e);
    printf("\n");

    return 0;
}

/* 
saída 

a 26 = 011010
b 55 = 0110111
c 713 = 01011001001
d 312 = 0100111000
e 366 = 0101101110
 */