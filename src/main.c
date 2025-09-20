#include <stdio.h>
#include "../include/mystrfunctions.h"
#include "../include/myfilefunctions.h"

int main() {
    printf("--- Testing String Functions ---\n");
    char str1[50] = "Hello";
    char str2[50];
    mystrcpy(str2, str1);
    printf("Copied string: %s\n", str2);
    printf("Length of str1: %d\n", mystrlen(str1));

    printf("\n--- Testing File Functions ---\n");
    FILE* fp = fopen("test.txt", "r");
    if (fp) {
        int lines, words, chars;
        wordCount(fp, &lines, &words, &chars);
        printf("Lines: %d, Words: %d, Chars: %d\n", lines, words, chars);
        fclose(fp);
    } else {
        printf("Could not open test.txt\n");
    }

    return 0;
}

