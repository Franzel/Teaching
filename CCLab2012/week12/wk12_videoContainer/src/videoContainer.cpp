//
//  videoContainer.cpp
//  exampleOne
//
//  Created by Francisco Zamorano on 11/16/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#include <iostream>
#include "videoContainer.h"

//--------------------------------------------------------------
void videoContainer::setup(string filename){
    
    video.loadMovie(filename);
    video.play();

    
    videoW = video.getWidth() / 3;
    videoH = video.getHeight() / 3;
 
}

//--------------------------------------------------------------
void videoContainer::update(){
    video.update();
}

//--------------------------------------------------------------
void videoContainer::draw(float x, float y, float w, float h){
    video.draw(x, y, w, h);
    
}










