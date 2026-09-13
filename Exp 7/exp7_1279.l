%{
#include <stdio.h>
%}

%%
^.*com$   { printf("ENDS WITH com: %s\n", yytext); }
^.*$      { printf("DOES NOT END WITH com: %s\n", yytext); }
\n        { /* Ignore newline */ }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter lines (Ctrl+D to stop):\n");
    yylex();
    return 0;
}
