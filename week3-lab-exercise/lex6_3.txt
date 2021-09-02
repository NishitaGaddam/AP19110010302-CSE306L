%{
    int f=0;
%}
%%
[(]  ++f;
[)] --f;
%%
main(){
    yylex();
    if(f==0)
    printf("Well formed paranthasis");
    else
    printf("Not well formed paranthasis");
}
int yywrap()
{
    return 1;
}