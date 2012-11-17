#pragma once

#include "ofMain.h"
#define NUM 10

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
    
    
    void changeColor (); // a custom function
    void changeSize (float pct);
    void randomizeSize(float min, float max);
    
    ofColor myColor [NUM]; // we declare an array of NUM elements
    float   yPos[NUM];
    float   speed[NUM];
    float   rectSize[NUM];
    
    

		
};
