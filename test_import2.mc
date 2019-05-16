#include "src/stdlib.cl";

int main(){
	int[2] a = [1,2];
	int[2] b = [2,3];
	int[5] c = a@[2,3,4];
	int i;
	for (i=0; i<size(c);i=i+1){
		print(c[i]);
	}	
	return 0;
}