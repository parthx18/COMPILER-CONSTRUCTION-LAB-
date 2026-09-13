%{
#include "y.tab.h"
#include <stdlib.h>
%}

%%
[0-9]+          { yylval = atoi(yytext); return NUMBER; }
[+\-*/\n()]     { return yytext[0]; }
.               { return yytext[0]; }
%%

int yywrap() {
    return 1;
}
