//
//  VideoCellTableViewCell.swift
//  MartinYoutubeApp
//
//  Created by Martin Nordström on 2017-02-08.
//  Copyright © 2017 Martin Nordström. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(youtubeModel: YoutubeModel) { // Updates the data inside a cell so it can be recycled
        videoTitle.text = youtubeModel.videoTitle
        // When downloading from internet use async
        let url = URL(string: youtubeModel.imageURL)!
        
        // Downloads a image on a background thread
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                // Handle the error
            }
        }
    }

}
