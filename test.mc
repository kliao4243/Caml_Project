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
	int[2] b = [3,4];
	print(sum(a,b));
}