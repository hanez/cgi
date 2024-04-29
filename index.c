#include<stdio.h>

int main() {
    printf("Content-type: text/plain\n\n");
    printf("Hello from C!\n\n");

    int c;
    FILE *file;
    file = fopen("index.c", "r");
    if (file) {
        while ((c = getc(file)) != EOF)
            putchar(c);
        fclose(file);
    }
    return 0;
}
