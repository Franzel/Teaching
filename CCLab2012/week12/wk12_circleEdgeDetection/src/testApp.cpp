#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    ofSetCircleResolution(60);
    ofBackground(0);
    
    circleSize = 100;
    xPos = ofGetWidth()/2;
    yPos = ofGetHeight()/2;
  

}

//--------------------------------------------------------------
void testApp::update(){
    


}

//--------------------------------------------------------------
void testApp::draw(){

    
    ofCircle(xPos, yPos, circleSize);
    string mySize = "circle radius is: " + ofToString(circleSize); 
    ofDrawBitmapString(mySize,100,100);
    ofDrawBitmapString("press 'f' for Fullscreen",100,50);

}

//--------------------------------------------------------------
void testApp::keyPressed(int key){
    switch (key) {
        case 'f':
            ofToggleFullscreen();
            break;
            
        default:
            break;
    }


}

//--------------------------------------------------------------
void testApp::keyReleased(int key){

}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){
    
    if (ofDist(x, y, xPos, yPos)<circleSize){
        circleSize++;
    }else{
        circleSize--;
    }

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