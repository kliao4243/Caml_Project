#include <stdio.h>
struct _track{
	int instrument;
	char** melody;
	int* rhythm;
};

int print_arr(int a){
    int res = a + 100;
    printf("%d\n",res);
	return 0;
}
int pitch_to_int(char* s){
    char a = s[0];
    char b = s[1];
    char c = s[2];
    int result = 23;
    if(a-'0' < 4){
        result += 2 * (a-'0') - 1;
    }else{
        result += 2 * (a-'0') - 2;
    }
    switch(b){
        case 'b':
            result--;
            break;
        case '#':
            result++;
            break;
    }
    result += (c-'1') * 12;
    return result;
}

