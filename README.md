# Assignment1
1.	Write a code to check if given number is armstrong number or not.
int main()    
{    
int n,r,sum=0,temp;    
printf("enter the number=");    
scanf("%d",&n);    
temp=n;    
while(n>0)    
{    
r=n%10;    
sum=sum+(r*r*r);    
n=n/10;    
}    
if(temp==sum)    
printf("armstrong  number ");    
else    
printf("not armstrong number");    
return 0;  
}   

Output:- 123 is not Armstrong.
	    153 is Armstrong


2.	Write a code to reverse a number.

#include<stdio.h>  
 #include<stdio.h>  
 int main()    
{    
int n, reverse=0, rem;    
printf("Enter a number: ");    
  scanf("%d", &n);    
  while(n!=0)    
  {    
     rem=n%10;    
     reverse=reverse*10+rem;    
     n/=10;    
  }    
  printf("Reversed Number: %d",reverse);    
return 0;  
}  

Output : enter a number456
Reversed number654
 

