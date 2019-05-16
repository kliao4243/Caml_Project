int[] bubble_sort(int[] Arr, int sz){
	int i;
	int j;
	int temp;
	for (i=0;i<sz;i=i+1){
		for (j=i+1;j<sz;j=j+1){
			if (Arr[i]>Arr[j]){
				temp = Arr[i];
				Arr[i] = Arr[j];
				Arr[j] = temp;
			}
		}
	}
	return Arr;
}

int main()
{	
	int[7] Arr = [9,2,3,3,4,1,6];
	int[7] sorted = bubble_sort(Arr, 7);
	int i;
	for (i=0;i<size(sorted);i=i+1){
		print(sorted[i]);
	}
	return 0;
}