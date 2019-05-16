#include "src/stdlib.cl";
int main()
{
	_track track1;
    _track track2;
    
    Pitch[49] melody =
    [1b1,1b1,5^4,
     3^4,1b1,1b1,3^4,5^4,6^4,
     2^4,1b1,1b1,2^4,3^4,
     4^4,1^5,1b1,1^5,7^4,5^4,
     6^4,5^4,3^4,3^4,1b1,1b1,5^4,
     6^4,6^4,6^4,2^5,1^5,7^4,7^4,1^5,6^4,
     5^4,1b1,1^4,2^4,3^4,5^4,
     5^4,1b1,5^4,4^4,3^4,7^3,1^4];
    
    int[49] rhythm =
    [2,4,4,
     4,4,8,8,8,8,
     4,4,4,8,8,
     4,4,8,8,8,8,
     8,16,16,4,4,8,8,
     8,4,8,16,8,16,16,16,8,
     4,4,8,8,8,8,
     4,8,8,8,8,8,8];
    
    Pitch[10] chorus = [3^4,3^4,3^4,3^4,1^4,1^4,3^4,7^3,3^4,1^4];
    int[10] chourus_rhythm = [1,2,2,1,1,1,1,1,1,1];
	track1 = build_track(30, 49, melody, rhythm);
    track2 = build_track(1, 10, chorus, chourus_rhythm);
	generate_music(track1);
    generate_music(track2);
	return 0;
}
