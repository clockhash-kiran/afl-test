#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char* argv[]) {
    char buf[100];
    if (fgets(buf, sizeof(buf), stdin)) {
        if (strstr(buf, "crashme")) {
            fprintf(stderr, "Crash triggered!\n");
            abort();
        }
    }
    return 0;
}
