#include "src/stdlib.cl";
struct _inspiration{
    Pitch[] melody;
    int[] rhythm;
    int length;
    int rating;
};
int main(){
	_inspiration May11th;
    _inspiration May12th;
    _track my_choice;
	May11th.melody = [3^5, 2#5, 3^5, 2#5, 3^5, 7^4, 2^5, 1^5, 6^4] @ [3^5, 2#5, 3^5, 2#5, 3^5, 7^4, 2^5, 1^5, 6^4]@[3^5, 2#5, 3^5, 2#5, 3^5, 7^4, 2^5, 1^5, 6^4];
	May11th.rhythm = [16, 16, 16, 16, 16, 16, 16, 16, 8] @ [16, 16, 16, 16, 16, 16, 16, 16, 8]@[16, 16, 16, 16, 16, 16, 16, 16, 8];
	May11th.length = 9;
	May11th.rating = 4;
	May12th.melody = [1^6, 2^6, 2#6, 3^6, 1^6, 2^6, 3^6, 7^5, 2^6, 1^6];
	May12th.rhythm = [16, 16, 16, 16, 16, 16, 8, 16, 8, 4];
	May12th.length = 10;
	May12th.rating = 1;
	if(May12th.rating < May11th.rating){
        my_choice = build_track(1,27,May11th.melody,May11th.rhythm);
	}
	else{
		my_choice = build_track(1,10,May12th.melody,May12th.rhythm);
	}
	generate_music(my_choice);
}
