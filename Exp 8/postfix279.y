%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char *s);
%}

%token NUMBER

%%

lines:	/* empty */
	| lines line
	;

line:	'\n'
	| exp '\n'	{ printf("Result = %d\n", $1); }
	| error '\n'	{ yyerrok; printf("Syntax Error! Please re-enter.\n"); }
	;

exp:	exp exp '+'	{ $$ = $1 + $2; }
	| exp exp '-'	{ $$ = $1 - $2; }
	| exp exp '*'	{ $$ = $1 * $2; }
	| exp exp '/'	{
				if($2 == 0) {
					printf("Error: Division by zero\n");
					$$ = 0;
				} else {
					$$ = $1 / $2;
				}
			}
	| NUMBER	{ $$ = $1; }
	;

%%

void yyerror(char *s) {
    /* yyerror is handled manually in the rules for better recovery */
}

int main() {
    printf("Postfix Evaluator: Enter expressions (Ctrl+C to exit)\n");
    yyparse();
    return 0;
}
