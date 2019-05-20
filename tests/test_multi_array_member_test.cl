/*Kunjian Liao*/
#include "src/stdlib.cl";
struct _test{
    Pitch[] test;
    int[] test2;
};
int main(){
	_test a;
	a.test = [1^4, 1#4];
	a.test2 = [1, 2, 3];
	print(a.test[0]);
	print(a.test2[0]);
}