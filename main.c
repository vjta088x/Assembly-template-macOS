#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


extern char get_char();

int main()
{
    printf("%c \n", (char)get_char());
    return 0;
}
