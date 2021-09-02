%{
    int line_number=1;
%}
line.*\n
%%
{line} {printf("%d %s",line_number++,yytext);}
%%
main(){
    extern FILE *yyin;
    yyin=fopen("file.txt","r");
    yylex();
}
int yywrap(){
    return 1;
}