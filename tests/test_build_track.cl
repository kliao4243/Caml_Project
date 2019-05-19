#include "src/stdlib.cl";
int main(){
    _track t;
    t = build_track(1,2,[4b4,4#4],[4,4]);
    print(t.size);
    print(t.instrument);
    print(t.melody[0]);
    print(t.rhythm[0]);
    print(t.melody[1]);
    print(t.rhythm[1]);
}
