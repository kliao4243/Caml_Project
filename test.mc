struct _b{
	int[3] pitch;
};
int main()
{
	_b tem;
	tem.pitch = [1,2,3];
	tem.pitch[2] = 111;
	print(tem.pitch[2]);
}