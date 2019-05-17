#include "src/stdlib.cl";
int main(){
	_track entertainer;
	Pitch[8] melody1 = [2^4, 2#4, 3^4, 1^5, 3^4, 1^5, 3^4, 1^5];
	int[8] rhythm1 = [16, 16, 16, 8, 16, 8, 16, 4];
	Pitch[10] melody2 = [1^6, 2^6, 2#6, 3^6, 1^6, 2^6, 3^6, 7^5, 2^6, 1^6];
	int[10] rhythm2 = [16, 16, 16, 16, 16, 16, 8, 16, 8, 4];
	Pitch[10] melody3 = [6^5, 5^5, 4#5, 6^5, 1^6, 3^6, 2^6, 1^6, 6^5, 2^6];
	int[10] rhythm3 = [16, 16, 16, 16, 16, 8, 16, 16, 16, 4];
	Pitch[28] melody = melody1@melody2@melody1@melody3;
	int[28] rhythm = rhythm1@rhythm2@rhythm1@rhythm3;
	entertainer = build_track(1, 36, melody, rhythm);
	generate_music(entertainer);
	return 0;
}
