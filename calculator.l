%option noyywrap
%{
int v1,v2,f=0;
char op;
%}

%%
[0-9]+ {if(f==0)
               {v1=atoi(yytext);
                      f=1;}
               else{
                   v2=atoi(yytext);
                         fun();
                     }
            }
"*"|"/"|"+"|"-" {op=yytext[0];}
; {return(1);}
%%
void main(){
printf("enter the string: ");
yylex();
}
void fun(){
switch(op)
{
case '+':printf("%d",v1+v2);
            break;
case '-':printf("%d",v1-v2);
            break;
case '/':printf("%d",v1/v2);
            break;
case '*':printf("%d",v1*v2);
            break;
}
}


