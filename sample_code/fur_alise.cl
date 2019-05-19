#include "src/stdlib.cl";
int main(){
    _track fur_elise;
    Pitch[19] melody;
    int[19] rhythm;
	Pitch[2] start_melody = [3^5, 2#5];
	Pitch[6] first_bar_melody = [3^5, 2#5, 3^5, 7^4, 2^5, 1^5];
	Pitch[5] second_bar_melody = [6^4, 1b1, 1^4, 3^4, 6^4];
	Pitch[5] third_bar_melody = [7^4, 1b1, 3^5, 5#4, 7^4];
	Pitch[1] end_melody = [1^5];
	int[2] start_rhythm = [16, 16];
	int[6] first_bar_rhythm = [16, 16, 16, 16, 16, 16];
	int[5] second_bar_rhythm = [8, 16, 16, 16, 16];
	int[5] third_bar_rhythm = [8, 16, 16, 16, 16];
	int[1] end_rhythm = [8];

    melody = start_melody@first_bar_melody@second_bar_melody@third_bar_melody@end_melody;
    
    rhythm = start_rhythm@first_bar_rhythm@second_bar_rhythm@third_bar_rhythm@end_rhythm;

	fur_elise = build_track(1, 19, melody, rhythm);
	generate_music(fur_elise);
	return 0;
}
