struct _track{
	int instrument;
	int size;
	Pitch[100] melody;
	int[100] rhythm;

};
_track build_track(int instrument, int size, Pitch[] melody, int[] rhythm){
	_track res;
	int i;
	Pitch[10] tem = [1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1];
	Pitch[20] new_melody = tem@tem;
	int[10] tem2 = [0,0,0,0,0,0,0,0,0,0];
	int[20] new_rhythm = tem2@tem2;
	res.instrument = instrument;
	res.size = size;
	for(i = 0; i < size; i = i + 1){
		new_melody[i] = melody[i];
		new_rhythm[i] = rhythm[i];
	} 
	res.melody = new_melody;
	res.rhythm = new_rhythm;
	return res;
}

void generate_music(_track t){
	int i;
	print("track start");
	print(t.instrument);
	print(t.size);
	for(i = 0; i < t.size; i = i + 1){
		print(pitch_to_int(t.melody[i]));
		print(t.rhythm[i]);
	}
	return;
}


int main()
{	
	int i;
	Pitch[5] tem;
	Pitch[5] melody_a = [1#1,2#1,3#1,4#1,5#1];
	int[5] rhythm_a = [1,1,1,1,2];
	_track track_1 = build_track(1, 5, melody_a,rhythm_a);
	generate_music(track_1);
	/*
	print(track_1.melody[1]);
	print(track_1.rhythm[0]);
	*/
}