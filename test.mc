struct _student{
	int a;
	int b;
};
int sum(int[] x,int[] y){
	return (x[0] + y[0]);
}
int main()
{	
	int i;
	int j;
	int[2] a = [1,2];
	int[4] b = [1,2,0,4];
	int[6] c = a @ b;
	print(c[3]);
	return 0;
}