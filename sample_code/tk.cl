int main(){
	int i;
	Pitch[2] start_melody = [3^5, 2#5];
	Pitch[6] first_bar_melody = [3^5, 2#5, 3^5, 7^4, 2^5, 1^5];
	Pitch[5] second_bar_melody = [6^4, 1b1, 1^4, 3^4, 6^4];
	Pitch[13] melody = start_melody@first_bar_melody@second_bar_melody;
	return 0;
}
