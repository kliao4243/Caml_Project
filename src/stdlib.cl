struct _track{
	int instrument;
	int size;
	Pitch[20] melody;
	int[20] rhythm;
};
_track build_track(int instrument, int size, Pitch[] melody, int[] rhythm){
	_track res;
	int i;
	Pitch[20] new_melody = [1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1,1b1];
	int[20] new_rhythm = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
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
	print("track_start"); /*size of tracks*/
	print(t.instrument);
	print(t.size);
	for(i = 0; i < t.size; i = i + 1){
		print(pitch_to_int(t.melody[i]));
		print(t.rhythm[i]);
	}
	return;
}
