%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define YYDEBUG 1

int yylex();
void yyerror();

%}



%token OPEN_CURLY_BRACKET
%token CLOSED_CURLY_BRACKET
%token OPEN_ROUND_BRACKET
%token CLOSED_ROUND_BRACKET
%token OPEN_SQUARE_BRACKET
%token CLOSED_SQUARE_BRACKET
%token COMMA
%token SEMICOLON
%token COLON
%token READ_SYMBOL
%token WRITE_SYMBOL
%token PLUS
%token MINUS
%token MULTIPLICATION
%token DIVISION
%token ASSIGNMENT
%token MODULO
%token GREATER_THAN
%token GREATER_OR_EQUAL
%token LOWER_THAN
%token LOWER_OR_EQUAL
%token EQUAL
%token NOT_EQUAL
%token AND
%token IF
%token FOR
%token ELSE
%token READ
%token WRITE
%token WHILE
%token IN
%token RANGE
%token INTEGER
%token STRING
%token CHAR
%token MAIN
%token IDENTIFIER
%token CONSTANT


%%

program : MAIN OPEN_ROUND_BRACKET CLOSED_ROUND_BRACKET OPEN_CURLY_BRACKET statement CLOSED_CURLY_BRACKET ;
statement : declaration_statement | assignment_statement | if_statement | while_statement | for_statement | read_statement | write_statement | declaration_statement statement | assignment_statement statement | if_statement statement | for_statement statement | while_statement statement | read_statement statement | write_statement statement ;
declaration_statement : variable_declaration_statement | array_declaration_statement ;
variable_declaration_statement : identifier_list COLON type SEMICOLON ;
array_declaration_statement : identifier_list COLON type OPEN_SQUARE_BRACKET CLOSED_SQUARE_BRACKET SEMICOLON ;
identifier_list : IDENTIFIER | IDENTIFIER COMMA identifier_list ;
type : INTEGER | STRING | CHAR ;
expression : int_expression | string_expression | char_expression ;
int_expression : CONSTANT | IDENTIFIER | CONSTANT SYMBOL int_expression | IDENTIFIER SYMBOL int_expression ;
SYMBOL : PLUS | MINUS | MULTIPLICATION | DIVISION | DIVISION | MODULO ;
string_expression : CONSTANT | IDENTIFIER ;
char_expression : CONSTANT
assignment_statement : IDENTIFIER ASSIGNMENT IDENTIFIER SEMICOLON | IDENTIFIER ASSIGNMENT expression SEMICOLON ;
if_statement : IF OPEN_ROUND_BRACKET condition CLOSED_ROUND_BRACKET OPEN_CURLY_BRACKET statement CLOSED_CURLY_BRACKET else_statement ;
else_statement : /*Empty*/ | ELSE OPEN_CURLY_BRACKET statement CLOSED_CURLY_BRACKET ;
condition : expression relation expression nextCondition ;
nextCondition : /*Empty*/ | AND condition ;
relation : GREATER_THAN | GREATER_OR_EQUAL | LOWER_THAN | LOWER_OR_EQUAL | EQUAL | NOT_EQUAL | AND ;
while_statement : WHILE OPEN_ROUND_BRACKET condition CLOSED_ROUND_BRACKET OPEN_CURLY_BRACKET statement CLOSED_CURLY_BRACKET ;
for_statement : FOR IDENTIFIER IN IDENTIFIER OPEN_CURLY_BRACKET statement CLOSED_CURLY_BRACKET
	| FOR OPEN_ROUND_BRACKET IDENTIFIER ASSIGNMENT CONSTANT SEMICOLON IDENTIFIER LOWER_THAN expression SEMICOLON IDENTIFIER ASSIGNMENT IDENTIFIER PLUS CONSTANT CLOSED_ROUND_BRACKET OPEN_CURLY_BRACKET statement CLOSED_CURLY_BRACKET ;
read_statement : READ read_helper SEMICOLON ;
read_helper : READ_SYMBOL IDENTIFIER nextRead ;
nextRead : /*Empty*/ | read_helper
write_statement : WRITE write_helper SEMICOLON ;
write_helper : WRITE_SYMBOL elementToWrite nextWrite ;
elementToWrite : IDENTIFIER | CONSTANT
nextWrite : /*Empty*/ | write_helper

%%

void yyerror (char *s) {
   printf("%s\n",s);
 }

extern FILE *yyin;

int main(int argc, char **argv)
{
	if(argc>1) yyin :  fopen(argv[1],"r");
	if(argc>2 && !strcmp(argv[2],"-d")) yydebug: 1;
	if(!yyparse()) fprintf(stderr, "\tO.K.\n");
}






























