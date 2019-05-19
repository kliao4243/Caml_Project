int main(){
	int i;
	int[4] int_array = [1,2,3,4];
	int[5] dup = int_array@[1];
	dup[2] = 20;
	for (i=0;i<size(dup);i=i+1){
		print(dup[i]);
	}
	for (i=0;i<size(int_array);i=i+1){
		print(int_array[i]);
	}

	return 0;
}