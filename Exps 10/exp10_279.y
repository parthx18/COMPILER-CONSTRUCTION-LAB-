%{
#include <stdio.h>

int yylex();
void yyerror(char *s);
%}

%token FOR ID NUM INC DEC

%%

program:
        for_loop
        {
            printf("Valid for loop\n");
        }
        ;

for_loop:
        FOR '(' initialization ';' condition ';' increment ')'
        ;

initialization:
        ID '=' NUM
        ;

condition:
        ID '<' NUM
        | ID '>' NUM
        ;

increment:
        ID INC
        | ID DEC
        ;

%%

void yyerror(char *s)
{
    printf("Invalid for loop\n");
}

int main()
{
    printf("Enter a for loop:\n");
    yyparse();
    return 0;
}
