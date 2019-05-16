#include "MidiFile.h"
#include "Options.h"
#include <random>
#include <iostream>

using namespace std;
using namespace smf;
typedef unsigned char uchar;
int main(int argc, char** argv) {
   Options options;
   options.define("o|output-file=s",   "Output filename (stdout if none)");
   options.process(argc, argv);
   ifstream myfile;
   string line;
   vector<uchar> midievent;
   string song_name = options.getString("output-file");
   MidiFile outputfile;
   myfile.open(song_name);
   midievent.resize(3);
   midievent[2] = 64;
   if (myfile.is_open()){
        int track = 0;
        float tpq = 120;
        int channel = 0;
        while(getline(myfile,line)){
            if (line != "track_start")
                break;
            float actiontime = 0;
            getline(myfile,line);
             cout << line << endl;
            int instrument = stoi(line);
            getline(myfile,line);
             cout << line << endl;
            outputfile.addTrack(1);
            outputfile.addTimbre(track, 0, channel, instrument);
            int length = stoi(line);
            for (int i=0; i<length; i++) {
                getline(myfile,line);
                int pitch = stoi(line);
                cout << line << endl;
                getline(myfile,line);
                int tem_rhythm = stoi(line);
                 cout << line << endl;
                float rhythm = 1;
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
                    default:
                        rhythm = 1;
                }
                midievent[1] = pitch;
                if (pitch == 0){
                    actiontime += rhythm * tpq;
                }
                else{
                    midievent[0] = 0x90;
                    midievent[1] = pitch;
                    outputfile.addEvent(track, actiontime, midievent);
                    actiontime += tpq * rhythm;
                    cout << actiontime << endl;
                    midievent[0] = 0x80;
                    outputfile.addEvent(track, actiontime, midievent);
                }
            }
            track++;
        }
   }
   outputfile.sortTracks();  // Need to sort tracks since added events are
   if (song_name.empty()) {
      if (options.getBoolean("hex")) outputfile.writeHex(cout);
      else cout << outputfile;
   } else
      outputfile.write(song_name+".mid");

   return 0;
}
