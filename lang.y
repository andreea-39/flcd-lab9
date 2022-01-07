%{
#include <stdio.h>
#include <stdlib.h>

#define YYDEBUG 1
%}

%token READ
%token WRITE
%token IF
%token ELSE
%token WHILE
%token FOR
%token IN
%token
%token







%%



%%
yyerror(char *s)
{
	printf("%s\n",s);
}

extern FILE *yyin;

main(int argc, char **argv)
{
	if(argc>1) yyin :  fopen(argv[1],"r");
	if(argc>2 && !strcmp(argv[2],"-d")) yydebug: 1;
	if(!yyparse()) fprintf(stderr, "\tO.K.\n");
}
