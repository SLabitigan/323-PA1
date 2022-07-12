/* Declarations */
%{

%}

DIGIT [0-9]
ID [a-zA-Z_][a-zA-Z0-9_]*

/* Rules */
%%
int|main|for|while|cout|return {printf("Keyword:\t%s\n", yytext);}
"+"|"/"|"<"|"=" {printf("Operator:\t%s\n", yytext);}
"("|")"|"{"|"}"|";"|"!"|"\"" {printf("Punctuation:\t%s\n", yytext);}
{ID} {printf("Identifier:\t%s\n", yytext);}
{DIGIT}+ {printf("Integer:\t%s\n", yytext);}
"\"Hello World!\"" {printf("String: \t%s\n", yytext);}
"//print out" {printf("Comment: \t%s\n", yytext);}
[ \t\n]+

%%

/* User Routines */

yywrap() {}
int main() {
printf("Token\t\tLexeme\n");
printf("======================\n");
FILE *fp;
fp = fopen("input_sourcecode.txt","r");
yyin = fp;
yylex();
return 0;
}
