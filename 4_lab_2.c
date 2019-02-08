#include<stdio.h>
#include<stdbool.h>
bool prime(int n){
	int i = 2,j=2;
	int flag = 0;
	for(j=2;j<n/2;j++){
		if(n%j==0)
			flag=1;
	}
	if(flag==1){
		flag=0;
		return false;
	}
	else
		return true;
}
int main(int argc, char const *argv[]){
	int x=12,y=12,z=12;
	int n = 0;
	if(x%2==0)
      n=1;
	else if(x%2==1)
       n=2;
	else if(prime(x))
         n=3;
	switch(n)
     {
		case 1:
		{
			x++;
			break;
		}
		case 2:
		{
			while(prime(y)==0)
                   {
				y++;
			}
			break;
		}
		case 3:
		{
			if(z%2==0)
				z++;
			else
				z=z+2;
		}
	}
	return 0;
}

