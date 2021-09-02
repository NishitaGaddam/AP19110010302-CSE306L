%%
[0-9]*000[0-9]* {printf("string is accepted");}
[0-9]* {printf("string is rejected");}
%%
main(){
    yylex();
}
int yywrap(){
    return 1;
}