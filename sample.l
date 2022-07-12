/* Declarations */
%{

%}

/* Rules */
%%
[int+for+main+while+return+cout]* {printf("Keyword    %s\n", yytext);}
[(){}]* {printf("Special character\n");}
[a-zA-z_][a-zA-Z0-9_]* {printf("Identifier\n");}
[0-9]+ {printf("Integer\n");}


%%

/* User Routines */

yywrap() {}
int main() {

FILE *fp;
char filename[50];
printf("Enter the filename: ");
scanf("%s",filename);
fp = fopen(filename,"r");
yyin = fp;
yylex();
return 0;
}