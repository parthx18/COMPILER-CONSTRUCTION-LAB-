%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
int yyerror(char *s);
%}

%token NUMBER

%left '+' '-'
%left '*' '/'

%%
input : /* empty */
      | input line
      ;

line  : expr '\n'
        { printf("Result = %d\n", $1); }
      | error '\n'
        { printf("Syntax Error! Please re-enter.\n"); yyerrok; }
      ;

expr  : expr '+' expr
        { $$ = $1 + $3; }
      | expr '-' expr
        { $$ = $1 - $3; }
      | expr '*' expr
        { $$ = $1 * $3; }
      | expr '/' expr
        {
          if ($3 == 0) {
              printf("Error: Division by zero!\n");
              $$ = 0;
          }
          else
              $$ = $1 / $3;
        }
      | '(' expr ')'
        { $$ = $2; }
      | NUMBER
        { $$ = $1; }
      ;

%%

int main() {
    printf("Desk Calculator: Enter expressions (Ctrl+C to exit)\n");
    yyparse();
    return 0;
}
