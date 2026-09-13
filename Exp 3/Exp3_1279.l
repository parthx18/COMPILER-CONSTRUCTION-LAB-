%{
#include <stdio.h>

int match = 0;
int notmatch = 0;
%}

%%
[Aa][a-zA-Z0-9]*        {
                            printf("Matched      : %s\n", yytext);
                            match++;
                          }

[B-Zb-z0-9][a-zA-Z0-9]* {
                            printf("Not Matched : %s\n", yytext);
                            notmatch++;
                          }

[ \t\n]+                 ;   /* Ignore spaces, tabs and newlines */

.                         ;   /* Ignore other characters */
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter input (Press Ctrl+D to stop):\n");

    yylex();

    printf("\n------ Result ------\n");
    printf("Total Matched     = %d\n", match);
    printf("Total Not Matched = %d\n", notmatch);

    return 0;
}
