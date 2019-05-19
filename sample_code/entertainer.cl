#include "src/stdlib.cl";
int main(){
    _track entertainer;
    _track chorus;
    
    Pitch[9] melody1 = [2^4, 2#4, 3^4, 1^5, 3^4, 1^5, 3^4, 1^5, 1^5];
    int[9] rhythm1 = [16, 16, 16, 8, 16, 8, 16, 8, 4];
    Pitch[11] melody2 = [1^6, 2^6, 2#6, 3^6, 1^6, 2^6, 3^6, 7^5, 2^6, 1^6, 1^6];
    int[11] rhythm2 = [16, 16, 16, 16, 16, 16, 8, 16, 8, 8, 4];
    Pitch[11] melody3 = [6^5, 5^5, 4#5, 6^5, 1^6, 3^6, 2^6, 1^6, 6^5, 2^6, 2^6];
    int[11] rhythm3 = [16, 16, 16, 16, 16, 8, 16, 16, 16, 8, 4];
    Pitch[10] melody4 = [2^4, 2#4, 3^4, 1^5, 3^4, 1^5, 3^4, 1^5, 1^5, 1^5];
    int[10] rhythm4 = [16, 16, 16, 8, 16, 8, 16, 16, 8, 4];
    Pitch[41] melody = melody1@melody2@melody4@melody3;
    int[41] rhythm = rhythm1@rhythm2@rhythm4@rhythm3;
    
    Pitch[16] c_melody1 = [7^3, 1^3, 1^4, 3^3, 1^4, 4^3, 1^4, 3^3, 1^4, 5^2, 5^3, 5^2, 5^3, 1^3, 1^4, 1^4];
    int[16] c_rhythm1 = [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8];
    Pitch[14] c_melody2 = [7^3, 1^3, 1^4, 3^3, 1^4, 4^3, 1^4, 3^3, 3b3, 2^3, 1^4, 2^3, 1^4, 7^3];
    int[14] c_rhythm2 = [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8];
    Pitch[30] c_melody = c_melody1@c_melody2;
    int[30] c_rhythm = c_rhythm1@c_rhythm2;
    
    entertainer = build_track(1, 41, melody, rhythm);
    chorus = build_track(1, 30, c_melody, c_rhythm);
    
    generate_music(entertainer);
    generate_music(chorus);
    return 0;
}
