%{
#include "y.tab.h"
#include <stdlib.h>
%}

%%
[0-9]+		{ yylval = atoi(yytext); return NUMBER; }
[ \t]		{ /* Ignore spaces and tabs */ }
\n		{ return '\n'; }
.		{ return yytext[0]; }
%%

int yywrap() {
    return 1;
}
