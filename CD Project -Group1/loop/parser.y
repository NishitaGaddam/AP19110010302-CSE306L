%{
#include <stdio.h>
%}
%token NUMBER
%token KEYWORD
%token ID
%%
S:E {printf("The expression is correct.\n");};
E:KEYWORD'('C')''{''}';
C:NUMBER | D;
D:ID;
%%
int main(){
yyparse();
}
int yywrap(){
return 1;
}
void yyerror(char *s){
printf("Error %s",s);
}