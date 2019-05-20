/* author: Yuanji Huang */
#include "src/stdlib.cl";
int main(){
    int a_1;
    int b_1;
    int c_1;
    Pitch a = 4^4;
    Pitch b = 1#7;
    Pitch c = 2b3;
    a_1 = pitch_to_int(a);
    b_1 = pitch_to_int(b);
    c_1 = pitch_to_int(c);
    print(a_1);
    print(b_1);
    print(c_1);
}
