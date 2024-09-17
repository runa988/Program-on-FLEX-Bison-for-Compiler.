%{
#include "Control.tab.h"
%}

%%
"for"       { return FOR; }
"while"     { return WHILE; }
"if"        { return IF; }
"else"      { return ELSE; }
"switch"    { return SWITCH; }
"case"      { return CASE; }
"break"     { return BREAK; }
"("         { return LPAREN; }
")"         { return RPAREN; }
"{"         { return LBRACE; }
"}"         { return RBRACE; }
";"         { return SEMICOLON; }
"="         { return EQ; }
"<"         { return LT; }
">"         { return GT; }
[0-9]+      { return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]* { return IDENTIFIER; }
[ \t\n]+    { /* Ignore whitespace */ }
.           { return yytext[0]; }

%%

int yywrap(void) {
    return 1;  // Return 1 to signal end of input
}
