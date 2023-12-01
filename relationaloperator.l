%{
#include <stdio.h>
%}

%%
// Regular expressions and corresponding actions
[><]=?     { printf("Relational Operator: %s\n", yytext); }
[a-zA-Z]+ { printf("Word: %s\n", yytext); }
.         ; // Ignore other characters

%%

int main() {
    yylex();
    return 0;
}