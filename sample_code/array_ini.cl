int main(){
	int i;
	int[4] int_array = [1,2,3,4];
	bool[4] bool_array = [true,false,true,false];
	String[4] str_array = ["i","like","coding","ocaml"];
	Pitch[4] pitch_array = [1^4,2^4,3#4,4#4];
	float[4] float_array = [1.1,2.3,3.4,5.6];
	int_array[2]=30;
	bool_array[1]=false;
	str_array[3]="java";
	pitch_array[1]=1^4;
	float_array[3]=2.2;
	for (i=0;i<4;i=i+1){
		print(int_array[i]);
		print(str_array[i]);
		print(pitch_array[i]);
		print(float_array[i]);			
	}
	return 0;
}