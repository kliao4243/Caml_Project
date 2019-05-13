struct _chord{
	Pitch a;
	Pitch b;
	Pitch c;
};
struct _track{
	String name;
	String instrument;
	Array<_chord> note;
	Array<int> rhythm;
};

int main()
{
	Array<float> b;
	_track c;
	c.name = "abccc";
	b = [1.0,2.0,3.2];
	b[0] = 2.0;
	print(b[100]);
	return 0;
}