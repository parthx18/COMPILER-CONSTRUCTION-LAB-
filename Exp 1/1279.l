/*
 * NOTE: top of file (%{ ... %}) was cropped in the original screenshot,
 * only the closing "%}" was visible. Add includes here if needed, e.g:
 * %{
 * #include <stdio.h>
 * %}
 */

%%
ONE|one|One   { printf("1"); }
TWO|two|Two   { printf("2"); }
THREE|three|Three { printf("3"); }
FOUR|four|Four { printf("4"); }
FIVE|five|Five { printf("5"); }
SIX|six|Six   { printf("6"); }
SEVEN|seven|Seven { printf("7"); }
EIGHT|eight|Eight { printf("8"); }
NINE|nine|Nine { printf("9"); }
%%

void main()
{
    yylex();
}
