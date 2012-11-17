#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    ofBackground(0);
    
    imgOne.loadImage("cat.jpg"); // images should be inside the data folder
    
    oneW = imgOne.width;        //we can get the width of the images
    oneH = imgOne.height;
    
    font.loadFont("cambria.ttf", 24); //load the font
    
    

}

//--------------------------------------------------------------
void testApp::update(){

}

//--------------------------------------------------------------
void testApp::draw(){
    ofSetColor(255,0,0); // by default the images are "tinted" white, but if we specify a color somewhere that will affect the image
    imgOne.draw(0,0); // if we don't specify a size, it will use the original size of the image
    
    ofPushStyle();
    ofSetColor(100,255,50);
    imgOne.draw(oneW, 0, oneW/3, oneH/3);
    ofPopStyle();
    
    
    font.drawString("BALL CAT", oneW/2, oneH +100); //draw the font
    

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