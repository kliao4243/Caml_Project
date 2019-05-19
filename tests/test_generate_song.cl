#include "src/stdlib.cl";
int main(){
    _track t;
    t = build_track(1,2,[4b4,4#4],[4,4]);
    generate_music(t);
}
