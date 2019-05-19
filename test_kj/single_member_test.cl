/*Kunjian Liao*/
#include "src/stdlib.cl";
struct _test{
    int test;
};
int main(){
	_test a;
	a.test = 1;
	print(a.test);
}