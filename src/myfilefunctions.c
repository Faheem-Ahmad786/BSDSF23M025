#include "../include/myfilefunctions.h"
#include <stdlib.h>
#include <string.h>

int wordCount(FILE* file, int* lines, int* words, int* chars) {
    if (!file) return -1;

    *lines = *words = *chars = 0;
    int c, in_word = 0;

    while ((c = fgetc(file)) != EOF) {
        (*chars)++;
        if (c == '\n') (*lines)++;
        if (c == ' ' || c == '\n' || c == '\t') {
            in_word = 0;
        } else if (!in_word) {
            in_word = 1;
            (*words)++;
        }
    }
    return 0;
}

int mygrep(FILE* fp, const char* search_str, char*** matches) {
    if (!fp || !search_str) return -1;

    char buffer[256];
    int count = 0;
    *matches = NULL;

    while (fgets(buffer, sizeof(buffer), fp)) {
        if (strstr(buffer, search_str)) {
            *matches = realloc(*matches, (count + 1) * sizeof(char*));
            (*matches)[count] = strdup(buffer);
            count++;
        }
    }
    return count;
}

