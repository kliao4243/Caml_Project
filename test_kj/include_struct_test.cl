/*Kunjian Liao*/
#include "test_kj/include_struct_helper.cl";
int main(){
	_test a;
	a.test = 1^4;
	print(a.test);
}