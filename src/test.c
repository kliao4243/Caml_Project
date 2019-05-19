#include <stdio.h>
#include <stdlib.h> 
void changeWord(char *str) 
{
    str[0]='D';         //here str have same address as w1 so whatever you did with str will be refected in main(). 
    str[1]='e';
    str[2]='l';
    str[3]='h';
    str[4]='i';
}

int main()
{
    char w1[]="Paris";
    changeWord(w1);      // this means address of w1[0] i.e &w[0]
    printf("The new word is %s",w1);
    return 0;

}