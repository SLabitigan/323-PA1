/* Declarations */
%{

%}

/* Rules */
%%
for {printf("Keyword");}
[a-zA-z_][a-zA-Z0-9_]* {printf("Identifier\n");}
[0-9]+ {printf("Integer\n");}
\n {return 0;}

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