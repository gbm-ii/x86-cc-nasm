#include <stdio.h>

char *mystrrev(char *s);

int main(int argc, char *argv[])
{
    for (int i = 1; i < argc; i++)
        printf("%d: %s\n", i, mystrrev(argv[i]));
}
