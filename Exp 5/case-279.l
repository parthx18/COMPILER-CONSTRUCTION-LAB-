%{
#include <stdio.h>
%}

%%
[a-z] {
        printf("%c", yytext[0] - 32);
      }

[A-Z] {
        printf("%c", yytext[0] + 32);
      }

\n {
     printf("\n");
   }

. {
    printf("%c", yytext[0]);
  }
%%

int main()
{
    printf("Enter a string: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
