%option yylineno
SPACES [\t\n\r ]+
INT 0|[1-9][0-9]*|0[1-7][0-7]*|0[xX][0-9A-Fa-f]*
FLOAT [0-9]*\.[0-9]*([eE][+-]?[0-9]*)?|\.[0-9]*([eE][+-]?[0-9]*)?|[0-9]*\.([eE][+-]?[0-9]*)?
ID [a-zA-Z_][a-zA-Z_0-9]{0,31}
SEMI ;
COMMA ,
ASSIGNOP =
RELOP >|<|>=|<=|==|!=
PLUS \+
MINUS -
STAR \*
DIV \/
AND &&
OR \|\|
DOT '.'
NOT !
TYPE 'int'|'float'
LP \(
RP \)
LB \[
RB \]
LC \{
RC \}
STRUCT 'struct'
RETURN 'return'
IF 'if'
ELSE 'else'
WHILE 'while'
%%
{SPACES} { printf("spaces, skip\n"); }
{INT} { printf("match: %s\n",yytext); }
{FLOAT} { printf("match: %s\n",yytext); }
{ID} { printf("match: %s\n",yytext); }
{SEMI} { printf("match: %s\n",yytext); }
{COMMA} { printf("match: %s\n",yytext); }
{ASSIGNOP} { printf("match: %s\n",yytext); }
{RELOP} { printf("match: %s\n",yytext); }
{PLUS} { printf("match: %s\n",yytext); }
{MINUS} { printf("match: %s\n",yytext); }
{STAR} { printf("match: %s\n",yytext); }
{DIV} { printf("match: %s\n",yytext); }
{AND} { printf("match: %s\n",yytext); }
{OR} { printf("match: %s\n",yytext); }
{DOT} { printf("match: %s\n",yytext); }
{NOT} { printf("match: %s\n",yytext); }
{TYPE} { printf("match: %s\n",yytext); }
{LP} { printf("match: %s\n",yytext); }
{RP} { printf("match: %s\n",yytext); }
{LB} { printf("match: %s\n",yytext); }
{RB} { printf("match: %s\n",yytext); }
{LC} { printf("match: %s\n",yytext); }
{RC} { printf("match: %s\n",yytext); }
{STRUCT} { printf("match: %s\n",yytext); }
{RETURN} { printf("match: %s\n",yytext); }
{IF} { printf("match: %s\n",yytext); }
{ELSE} { printf("match: %s\n",yytext); }
{WHILE} { printf("match: %s\n",yytext); }
. { printf("Error type A at Line %d: Mysterious characters \'%s\'\n", yylineno,yytext); }
%%
