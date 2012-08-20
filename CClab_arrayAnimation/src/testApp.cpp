#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    ofBackground(0, 0, 0);
    
    
}

//--------------------------------------------------------------
void testApp::update(){

}

//--------------------------------------------------------------
void testApp::draw(){
    
    float nRectanglesX = 50;
    float nRectanglesY = 50;
    float rectSize = 8;
    float rectSpace = 9;
    float width = nRectanglesX*rectSize;
    float height = nRectanglesY*rectSize;
    
    int counter = 0;
    

    
    
    ofTranslate(ofGetWidth()/2  + width/2, ofGetHeight()/2 +height/2);
    ofRotateY(ofMap(mouseX, 0, 800, -90, 90, true));
    ofRotateX(ofMap(mouseY, 0, 800, -90, 90, true));
    

    for (int x= 0; x<nRectanglesX; x++) {
        for (int y=0; y<nRectanglesY; y++) {
            
            // create modulator
            float radiusModulator = 0.05f;
            float angleModulator = ofGetElapsedTimef() + x * 0.3 ;
            float oscModulator = radiusModulator * sin(angleModulator);
            float oscMappedModulator = ofMap(oscModulator, -1, 1, 0, 1);

            
            // create oscillator
            float radius = 2;
            float angle = ofGetElapsedTimef()*6 + y*0.5 ;
            float osc = radius * sin(angle*oscMappedModulator);
            float oscMapped = ofMap(osc, -1, 1, 0, 1);
            
            ofPushMatrix();
            if (x%2){
                ofSetColor(100+ 155*oscMapped,100+ 50*oscMapped,20+ 50*oscMapped); //change color every two columns
            }
            
            else {
                ofSetColor(200,200,100);
            }

            ofTranslate(0, 0,15*oscMapped) ;
            ofRect(-width + rectSpace * x, -height + rectSpace * y, rectSize , rectSize );

            
            ofPopMatrix();
            
            
        }
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