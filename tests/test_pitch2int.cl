#include "src/stdlib.cl";
int main(){
    pitch a = 4^4;
    pitch b = 1#7;
    pitch c = 2b3;
    int a_1 = pitch_to_int(a);
    int b_1 = pitch_to_int(b);
    int c_1 = pitch_to_int(c);
    print(a_1);
    print(b_1);
    print(c_1);
}
