/*Kunjian Liao*/
#include "src/stdlib.cl";
struct _test{
    int test;
    String test2;
};
int main(){
	_test a;
	a.test = 1;
	a.test2 = "Hello World";
	print(a.test);
	print(a.test2);
}