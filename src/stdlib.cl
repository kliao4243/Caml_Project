struct _track{
	int instrument;
	int size;
	Pitch[20] melody;
	int[20] rhythm;
};
_track build_track(int instrument, int size, Pitch[] melody, int[] rhythm){
	_track res;
	int i;
    Pitch[100] new_melody = [melody[0]];
    int[100] new_rhythm = [rhythm[0]];
    for(i = 1; i < size; i = i + 1){
        new_melody = new_melody@[1b1];
        new_melody[i] = melody[i];
        new_rhythm = new_rhythm@[0];
        new_rhythm[i] = rhythm[i];
    }
	res.instrument = instrument;
	res.size = size;
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
