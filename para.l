/*Balanced parenthesis*/
%{
#include<stdio.h>
int c1=0,c2=0,c3=0;
%}
%%
[(] {c1++;}
[)] {c1--;}
[{] {c2++;}
[}] {c2--;}
[\[] {c3++;}
[]] {c3--;} 
[A-Z|a-z] {}
[\n] {if (c1==0 && c2==0 && c3==0) printf("matching\n"); else printf("not matching\n"); c1=0,c2=0,c3=0;}
. {} 
%%
int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r");
yylex();
}

