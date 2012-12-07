#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){

}

//--------------------------------------------------------------
void testApp::update(){
    
    ////LINE
    if (pts.size()>100) {
        pts.erase(pts.begin());
    }

    ////SQUARE
    for (int i=0; i<squares.size(); i++) {
        squares[i].update();
        
        if (squares[i].xPos> ofGetWidth()/2) {
            squares.erase(squares.begin()); //if it goes over half the screen, erase the element
        } 
    }
}

//--------------------------------------------------------------
void testApp::draw(){
    
    ////LINE
    ofSetColor(0);
    ofNoFill();
    ofBeginShape();
    
    for (int i=0; i<pts.size(); i++) {
        ofVertex(pts[i].x, pts[i].y);
    }
    
    ofEndShape();
    ofDrawBitmapString("number of ofPoints: " + ofToString(pts.size()), 100,ofGetHeight()-100); //draw number of elements inside the vector
    
    
    ////SQUARE
    ofFill();
    ofSetColor(255, 0, 0);
    for (int i=0; i<squares.size(); i++) {
        squares[i].draw(100*i, 30*i);
    }
    
    

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
    ////LINE
    ofPoint temp;
    temp.x = x;
    temp.y = y;
    pts.push_back(temp);

}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){
    
    ////SQUARE
    square tempSquare;  //create a square object every time the mouse is pressed
    squares.push_back(tempSquare); //put that temporal object into the vector array
    

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