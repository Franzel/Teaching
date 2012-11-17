#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    
}

//--------------------------------------------------------------
void testApp::update(){
    
    ofBackground(255, 255, 255);
    ofSetVerticalSync(true);    // Sometimes we want to have
                                // the framerate in sync with 
                                // the refresh screen of the screen
    
    ofEnableSmoothing();        // This enables anti-alias
    
}

//--------------------------------------------------------------
void testApp::draw(){
    
	ofSetColor(0,0,0);
	ofNoFill();
    
    
	ofBeginShape(); // we start drawing a vector shape
	for (int i = 0; i < pts.size();i++){
        
        float angle = sin(ofGetElapsedTimef()); // create a sin oscillation
        pts[i].x +=angle;                       // add that oscillation to posX
        pts[i].z += 6;                          // we increase posZ
        ofVertex(pts[i].x, pts[i].y, pts[i].z); // draw a new vertex
        
        
        if (pts.size()>100) {       // if the vector gets too big
            pts.erase(pts.begin()); // delete the first element of the array
        }
	}    
	ofEndShape(); // we end drawing a vector shape
    
}

//--------------------------------------------------------------
void testApp::keyPressed(int key){
    
}

//--------------------------------------------------------------
void testApp::keyReleased(int key){
    
}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y){
    
}

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){
    
    ofVec3f temp;   // we create a vector
	temp.x = x;     // we assign the current position to our temporal vector
	temp.y = y;     // same here
	pts.push_back(temp); // we copy that info to our vector, as a new element
    
}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){
    
}

//--------------------------------------------------------------
void testApp::mouseReleased(int x, int y, int button){
    
}

//--------------------------------------------------------------
void testApp::windowResized(int w, int h){
    
}

//--------------------------------------------------------------
void testApp::gotMessage(ofMessage msg){
    
}

//--------------------------------------------------------------
void testApp::dragEvent(ofDragInfo dragInfo){ 
    
}