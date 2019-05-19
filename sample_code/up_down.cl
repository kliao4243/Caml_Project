#include "src/stdlib.cl";

int main()
{	
	Pitch a = 1^4;
	up_8(a);
	print(a);
	return 0;
}
