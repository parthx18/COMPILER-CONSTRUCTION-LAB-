%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]+ {
    int n = atoi(yytext);
    int r;
    char hex[20];
    int i = 0;
    while (n > 0) {
        r = n % 16;
        if (r < 10)
            hex[i++] = r + '0';
        else
            hex[i++] = r - 10 + 'A';

        n = n / 16;
    }
    printf("Hexadecimal = ");
    while (i > 0)
        printf("%c", hex[--i]);
    printf("\n");
}
%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter decimal: ");
    yylex();
    return 0;
}
