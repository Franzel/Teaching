#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    video.initGrabber(320, 240);
    width=video.getWidth();
    height=video.getHeight();
    
    //allocate memory for the textures
    colorVideo.allocate(width, height);
    grayVideo.allocate(width, height);   

}

//--------------------------------------------------------------
void testApp::update(){
    video.update();
    
    if (video.isFrameNew()) {
        colorVideo.setFromPixels(video.getPixels(), width, height);
        grayVideo = colorVideo; //copy the colorImage into grayImage
        
        //Let's add some effects
        grayVideo.threshold(60);
//        grayVideo.blur(10);
//        grayVideo.blurHeavily();
        
        
        totalWhitePixels = grayVideo.countNonZeroInRegion(0, 0, width, height); // get the number of non-black pixels
        whitePixelsPct = totalWhitePixels / (width*height); // get the percentage
        countourVideo.findContours(grayVideo, 0, width*height, 1, true); //find contours
    }
}

//--------------------------------------------------------------
void testApp::draw(){
    //draw the video image
    video.draw(0, 0, width, height);
    
    
    //draw the textures
    colorVideo.draw(width, 0);
    grayVideo.draw(width*2, 0);
    countourVideo.draw(width*3,0,width,height);
    
    ofDrawBitmapString("totalWhitePixels: " + ofToString(totalWhitePixels), 500, 500);
    ofDrawBitmapString("whitePixels Pct: " + ofToString(whitePixelsPct), 500, 600);
    
    
    ofRect(0, height, 100*whitePixelsPct, 100*whitePixelsPct);//use the pct to resize a square
    


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