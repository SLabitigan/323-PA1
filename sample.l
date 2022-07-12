/* Declarations
%{

%}

/* Rules
%%

[a-zA-z_][a-zA-Z0-9_]* {printf("Identifier\n", yytext);}
[0-9]+ {printf("Integer\n", yytext);}


%%


/* User Routines */

int yywrap() {}
int main() {

FILE *fp;
char filename[50];
printf("Enter the filename: \n");
scanf("%s",filename);
fp = fopen(filename,"r");
yyin = fp;
yylex();
return 0;
}