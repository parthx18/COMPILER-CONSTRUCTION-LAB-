%{
#include <stdio.h>
int lines = 0, spaces = 0, words = 0;
int keywords = 0, identifiers = 0, comments = 0;
%}

%option noyywrap

%%

\n                          { lines++; }
[ \t]                       { spaces++; }

"//".*                      { comments++; }
"/"([^*]|\*+[^*/])*\*+"/"   { comments++; }

"int"|"float"|"char"|"double"|"void"|"if"|"else"|"while"|"for"|"return"|"break" {
                               keywords++;
                               words++;
                             }

[a-zA-Z_][a-zA-Z0-9_]*      {
                               identifiers++;
                               words++;
                             }

[0-9]+                      { words++; }

.                            { /* Ignore everything else */ }

%%

int main(int argc, char **argv) {
    if (argc > 1) {
        yyin = fopen(argv[1], "r");
        if (!yyin) {
            printf("Error opening file!\n");
            return 1;
        }
    } else {
        printf("Please provide an input file.\n");
        return 1;
    }

    yylex();

    printf("=== Lexical Analysis Results ===\n");
    printf("Lines:      %d\n", lines);
    printf("Spaces:     %d\n", spaces);
    printf("Words:      %d\n", words);
    printf("Keywords:   %d\n", keywords);
    printf("Identifiers: %d\n", identifiers);
    printf("Comments:   %d\n", comments);

    fclose(yyin);
    return 0;
}
