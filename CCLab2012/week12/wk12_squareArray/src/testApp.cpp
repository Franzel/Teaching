#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    
    ofSetVerticalSync(true);
    
    //initialaze arrays
    for (int i=0; i<NUM; i++) {
        ofColor tempColor;              // create a temporal ofColor object
        tempColor.r = ofRandom(255);    // assign values to red
        tempColor.g = ofRandom(255);    // assign values to green
        tempColor.g = ofRandom(255);    // assign values to blue
        myColor[i] = tempColor;         // copy those values into myColor
        speed[i] = ofRandom(1);         // give each element a different initial speed
        rectSize[i] = 100;
    }
    

}

//--------------------------------------------------------------
void testApp::update(){
    
    // every frame we update before drawing
    // here we are changing the yPos for each element
    for (int i=0; i<NUM; i++) {
        yPos[i] += speed[i];
    }
}

//--------------------------------------------------------------
void testApp::draw(){
    
    // now we just draw    
    for (int i=0; i<NUM; i++) {
        ofSetColor(myColor[i].r, myColor[i].g, myColor[i].b); //get the rgb values of myColor
        ofRect(100*i, yPos[i], rectSize[i], rectSize[i]);
    }
}


//--------------------------------------------------------------
void testApp::changeColor(){        // a custom function with no parameters
    for (int i=0; i<NUM; i++) {
        myColor[i].r += ofRandom(-10,10);
        myColor[i].g += ofRandom(-10,10);
        myColor[i].b += ofRandom(-10,10);
    }
}

//--------------------------------------------------------------
void testApp::changeSize(float pct){        // a custom function, passing in a value
    for (int i=0; i<NUM; i++) {
        rectSize[i] = rectSize[i] * pct;
    }
}

//--------------------------------------------------------------
void testApp::randomizeSize(float min, float max){        // a custom function, passing in a value
    
    for (int i=0; i<NUM; i++) {
        rectSize[i] = rectSize[i] * ofRandom(min, max);
    }
}

//--------------------------------------------------------------
void testApp::keyPressed(int key){
    switch (key) {
        case '1':
            changeSize(0.8);
            break;
            
        case '2':
            changeSize(1.2);
            break;

        case '3':
            randomizeSize(0.5,1.5);
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
    changeColor();
}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){
    changeColor();
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