#include "MidiFile.h"
#include "Options.h"
#include <random>
#include <iostream>

using namespace std;
using namespace smf;

int main(int argc, char** argv) {
   Options options;
   options.define("o|output-file=s",   "Output filename (stdout if none)");
   options.process(argc, argv);
   ifstream myfile;
   string line;
   string song_name = options.getString("output-file");
   MidiFile outputfile;
   myfile.open(song_name);
   if (myfile.is_open()){
        int track = 0;
        int tpq = 120;
        int channel = 0;
        while(getline(myfile,line)){
            if (line != "track_start")
                break;
            int actiontime = 0;
            getline(myfile,line);
            int instrument = stoi(line);
            getline(myfile,line);
            outputfile.addTrack(1);
            outputfile.addTimbre(track, 0, channel, instrument);
            int length = stoi(line);
            for (int i=0; i<length; i++) {
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
                outputfile.addNoteOn (track, actiontime, channel, pitch, tpq);
                actiontime += rhythm * tpq;
                outputfile.addNoteOff(track, actiontime,   channel, pitch);
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