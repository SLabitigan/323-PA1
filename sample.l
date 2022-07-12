/*Declarations*/
%{
/* Variables are defined here and may be used througout the program such as an int to use as a coutner.
These variables can be accessed inside yylex() and main()*/
%}
/*Definitions*/
/* Variables defined here could be used in the rules section for patterns*/
DIGIT [0-9]
ID [a-zA-Z_][a-zA-Z0-9_]*

/*Rules*/
/* Patterns may be used as rules so the program knows how to identify each lexeme from the input*/



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
/* Additional functions we could use and load with the lexical analyzer*/
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
