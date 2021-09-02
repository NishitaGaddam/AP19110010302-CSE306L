%{
    int vowels=0;
    int consonants=0;
%}
%%
[aeiouAEIOU] ++vowels;
[a-zA-Z] ++consonants;
%%
main(){
    yylex();
    printf("No. of vowels are %d\n",vowels );
    printf("No of consonants are %d\n",consonants);
}
int yywrap()
{
return 1;
}