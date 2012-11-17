//
//  videoContainer.h
//  exampleOne
//
//  Created by Francisco Zamorano on 11/16/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#ifndef exampleOne_videoContainer_h
#define exampleOne_videoContainer_h

#include "ofMain.h"


class videoContainer{
public:
    
    void setup(string filename);
    void update();
    void draw(float x, float y, float w, float h);
    
    ofVideoPlayer video;
    
    float xPos, yPos;
    float videoW, videoH;
    
};


#endif
