#include "src/stdlib.cl";
int main()
{	
	int i;
	int a;
	Pitch[20] melody_a = [1b1,1b1,1b1,4^4,5^4,1^4,2^4,3^4,4^4,5^4,1^4,2^4,3^4,4^4,5^4,1^4,2^4,3^4,4^4,5^4];
	int[20] rhythm_a = [4,4,4,4,2,4,4,4,4,2,4,4,4,4,2,4,4,4,4,2,4,4,4,4,2];
	Pitch[20] melody_b = [2^3,3^3,2^3,2^3,2^3,2^3,3^3,2^3,2^3,2^3,2^3,3^3,2^3,2^3,2^3,2^3,3^3,2^3,2^3,2^3,2^3,3^3,2^3,2^3,2^3];
	_track track_1 = build_track(1, 20, melody_a,rhythm_a);
	_track track_2 = build_track(4, 20, melody_b,rhythm_a);
	generate_music(track_1);
	generate_music(track_2);
	return 0;
}
