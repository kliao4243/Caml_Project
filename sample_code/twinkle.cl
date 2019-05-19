#include "src/stdlib.cl";
int main()
{
	int i;
	int a;
	_track track;
	Pitch[7] first = [1^4,1^4,5^4,5^4,6^4,6^4,5^4];
    Pitch[7] second = [4^4,4^4,3^4,3^4,2^4,2^4,1^4];
    Pitch[14] total = first@second;
	int[] rhythm = [4,4,4,4,4,4,2,4,4,4,4,4,4,2];
	track = build_track(1, 14, total, rhythm);
	generate_music(track);
	return 0;
}
