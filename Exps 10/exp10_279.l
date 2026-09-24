%{
#include "y.tab.h"
%}

%%

"for"           { return FOR; }
"++"            { return INC; }
"--"            { return DEC; }

[a-zA-Z][a-zA-Z0-9]*   { return ID; }
[0-9]+                 { return NUM; }

"="             { return '='; }
"<"             { return '<'; }
">"             { return '>'; }
";"             { return ';'; }
"("             { return '('; }
")"             { return ')'; }

[ \t\n]         ;

.               { return yytext[0]; }

%%

int yywrap()
{
    return 1;
}
