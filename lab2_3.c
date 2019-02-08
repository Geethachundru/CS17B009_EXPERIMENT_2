int main(int argv,char*argc[]){
register int number=1;
register int i;
register int count;
while(number<100)
{
count=0;
i=2;
while(i<=number/2)
{
if(number%i==0)
{
count++;
break;
}
i++;
}
if(count==0 && number!=1)
number++;
}
return 0;
}
