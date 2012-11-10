#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    ofSetCircleResolution(60);  // we ca specify with how many vertices we will draw circles (tip: try 3,4,5 and 6)
    ofEnableSmoothing();        // smooth, antialiasing
    ofEnableAlphaBlending();    // enable alpha(transparency)
    ofSetFrameRate(60);         // set a specific frameRate
    ofSetVerticalSync(true);    // Sync with the screen refresh rate
    
    ofBackground(100, 40, 10);  // set a background

}

//--------------------------------------------------------------
void testApp::update(){

}

//--------------------------------------------------------------
void testApp::draw(){
    
    ofBackgroundGradient(ofColor(10,40,80), ofColor(0, 0, 0), OF_GRADIENT_LINEAR); // make a cool gradient
    
    ofRect(ofGetWidth()/2, ofGetHeight()/2, 100, 100);
    
    
    
    ofSetColor(255);        //set a color
    ofSetLineWidth(4);      // set line weight
    ofLine(0,0,300,300);    // draw a line
    
    // lets make a shape using vertex
    ofSetColor(200, 100, 0);
    ofBeginShape(); // we need to start drawing
    ofVertex(0,ofGetHeight());
    ofVertex(ofGetWidth()/2, ofGetHeight()-100);
    ofVertex(ofGetWidth(), ofGetHeight());
    ofEndShape(); // and end drawing
    
    ofSetColor(0, 100, 255, 50); // alpha must be enabled for transparency
    ofCircle(ofGetWidth()/2 + 100, ofGetHeight()/2, 150);
    
    
    ofSetRectMode(OF_RECTMODE_CENTER); //we can specify the Rectangle alignment
    ofRect(0, 0, 100, 100);
    
    // use push-pop style to change properties to some elements without affecting everything else. Same logic as push-pop matrix
    ofPushStyle();
    ofSetLineWidth(0.5);
    ofNoFill();
    ofEllipse(ofGetWidth()/2, ofGetHeight()/2, 20,60);
    ofPopStyle();

    // sin animation
    float circleSize = 50 + 40*sin(ofGetElapsedTimef() * 15); //in this case we use ofgetElapsedTime as increment for the angle
    ofSetColor(200,255,100,50);
    ofCircle(ofGetWidth()/2 + 300, ofGetHeight()/2, circleSize);

}

//--------------------------------------------------------------
void testApp::keyPressed(int key){

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