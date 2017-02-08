//
//  YoutubeModel.swift
//  MartinYoutubeApp
//
//  Created by Martin Nordström on 2017-02-08.
//  Copyright © 2017 Martin Nordström. All rights reserved.
//

import Foundation

class YoutubeModel {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    //Getters. Keeps outside classes from manipulating data
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL:String, videoURL:String, videoTitle:String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
