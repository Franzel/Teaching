#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){

    for (int i=0; i<NUM; i++) {
        myVideo[i].setup("kyle2.mov"); //we pass in the filename
    }

    increment = 0;

}

//--------------------------------------------------------------
void testApp::update(){
    
    for (int i=0; i<NUM; i++) {
        myVideo[i].update();
    }

    increment += 0.1;
}

//--------------------------------------------------------------
void testApp::draw(){


    for (int i=0; i<NUM; i++) {
        myVideo[i].draw(myVideo[i].videoW * i, increment , myVideo[i].videoW, myVideo[i].videoH);
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