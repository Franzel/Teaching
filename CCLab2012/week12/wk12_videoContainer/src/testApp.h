#pragma once

#include "ofMain.h"
#include "videoContainer.h"

#define NUM 6   // a definition, NUM is just a name.
                // this tells the compiler that everytime that encounters "NUM" replace it by 6

class testApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();

		void keyPressed  (int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
    

    
    videoContainer myVideo[NUM];
    float increment;
		
};
