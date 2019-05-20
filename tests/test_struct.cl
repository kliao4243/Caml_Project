/*Kunjian Liao*/
#include "tests/include_struct_helper.cl";
int main(){
	_test a;
	a.test = 1^4;
	print(a.test);
}
