struct _track{
	int instrument;
	int size;
	Pitch[100] melody;
	int[100] rhythm;

};

int main()
{	
	_track[10] ta;
	ta[0].size = 1;
	print(ta[0].size);
}