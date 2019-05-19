/*Kunjian Liao*/
#include "src/stdlib.cl";
struct _test{
    Pitch[] test;
};
int main(){
	_test a;
	a.test = [1^4, 1#4];
}