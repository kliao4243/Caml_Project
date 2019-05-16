#include "MidiFile.h"
#include <cstring>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <queue>
#include <vector>
#include <string>
using namespace std;
using namespace smf;
typedef unsigned char uchar;
int main(int argc, char** argv) {
    
    if(argc != 2){
        printf("invalid command line argument\n sample usage ./betmidi song1.s");
        return 0;
    }
    string song_name = argv[1];
    string line;
    ifstream myfile;
    MidiFile outputfile;
    //outputfile.absoluteTicks();
    vector<uchar> midievent;
    midievent.resize(3);
    midievent[2] = 64;
    int tpq = 60;
    myfile.open(argv[1]);
    if (myfile.is_open()){
        int i = 1;

        while(getline(myfile,line)){
            if (line != "track_start")
                break;
            int actiontime = 0;
            getline(myfile,line);
            int instrument = stoi(line);
            getline(myfile,line);
            outputfile.addTrack();
            int length = stoi(line);
            for(int j = 0; j < length; j++){
                getline(myfile,line);
                int pitch = stoi(line);
                getline(myfile,line);
                
                int tem_rhythm = stoi(line);
                float rhythm;
                switch(tem_rhythm){
                    case 16:
                        rhythm = 0.25;
                        break;
                    case 8:
                        rhythm = 0.5;
                        break;
                    case 4:
                        rhythm = 1;
                        break;
                    case 2:
                        rhythm = 2;
                        break;
                    case 1:
                        rhythm = 4;
                        break;
                }
                midievent[0] = 0x90;     // store a note on command (MIDI channel 1)
                midievent[1] = pitch;
                outputfile.addEvent(i, actiontime, midievent);
                actiontime += tpq * rhythm;
                midievent[0] = 0x80;     // store a note off command (MIDI channel 1)
                outputfile.addEvent(i, actiontime, midievent);
            }
            i++;
        }
        myfile.close();
        outputfile.sortTracks();         // make sure data is in correct order
        outputfile.setTPQ(tpq);
        cout << outputfile.getTPQ() << endl;
        outputfile.write(song_name+".mid"); // write Standard MIDI File twinkle.mid
    }else{
        cout << "file is not opened!" << endl;
    }
    return 0;
}




