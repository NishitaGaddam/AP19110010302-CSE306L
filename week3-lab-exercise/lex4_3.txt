%%
[0-9]*00 {printf("\n string is accepted");}
[0-9]*   {printf("\n string is rejected");}
.
%%
main(){
    yylex();
}
int yywrap(){
    return 1;
}