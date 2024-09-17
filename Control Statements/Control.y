%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);

%}

%token FOR WHILE IF ELSE SWITCH CASE BREAK
%token LPAREN RPAREN LBRACE RBRACE SEMICOLON EQ LT GT
%token IDENTIFIER NUMBER COLON  // Add the COLON token here

%%
program:
    control_structure_list
    ;

control_structure_list:
    control_structure_list control_structure
    | control_structure
    ;

control_structure:
    for_loop
    | while_loop
    | if_else
    | switch_case
    ;

for_loop:
    FOR LPAREN IDENTIFIER EQ NUMBER SEMICOLON condition SEMICOLON IDENTIFIER EQ IDENTIFIER RPAREN LBRACE statements RBRACE
    {
        printf("Parsed a 'for' loop\n");
    }
    ;

while_loop:
    WHILE LPAREN condition RPAREN LBRACE statements RBRACE
    {
        printf("Parsed a 'while' loop\n");
    }
    ;

if_else:
    IF LPAREN condition RPAREN LBRACE statements RBRACE
    | IF LPAREN condition RPAREN LBRACE statements RBRACE ELSE LBRACE statements RBRACE
    {
        printf("Parsed an 'if-else' statement\n");
    }
    ;

switch_case:
    SWITCH LPAREN IDENTIFIER RPAREN LBRACE case_list RBRACE
    {
        printf("Parsed a 'switch' case statement\n");
    }
    ;

case_list:
    case_list CASE NUMBER COLON statements BREAK SEMICOLON
    | CASE NUMBER COLON statements BREAK SEMICOLON
    ;

condition:
    IDENTIFIER LT NUMBER
    | IDENTIFIER GT NUMBER
    ;

statements:
    statements statement
    | statement
    ;

statement:
    IDENTIFIER EQ NUMBER SEMICOLON
    | IDENTIFIER EQ IDENTIFIER SEMICOLON
    ;
%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    return yyparse();
}
