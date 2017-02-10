//
//  ViewController.swift
//  MartinYoutubeApp
//
//  Created by Martin Nordström on 2017-02-08.
//  Copyright © 2017 Martin Nordström. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var tableView: UITableView!
    
    var youtubeModels = [YoutubeModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        // Hardcoding the data
        let video1 = YoutubeModel(imageURL: "https://i.ytimg.com/vi/cK4y8M4pSbI/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JDEDUdZ9lNE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "How to be sexy")
        
        let video2 = YoutubeModel(imageURL: "https://i.ytimg.com/vi/2yW2FIH5KxM/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2yW2FIH5KxM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "POV Subways Parkour")
        
        let video3 = YoutubeModel(imageURL: "https://i.ytimg.com/vi/b-MmvL8idpk/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/b-MmvL8idpk\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "POV Rooftops Parkour")
        
        youtubeModels.append(video1)
        youtubeModels.append(video2)
        youtubeModels.append(video3)
        
        // The tableView knows to call these functions in this viewController
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // When IOS resycle the screens
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Youtube Cell", for: indexPath) as? VideoCell {
            
            let YoutubeModel = youtubeModels[indexPath.row]
            
           cell.updateUI(youtubeModel: YoutubeModel)
            
           return cell
            
        } else {
            return UITableViewCell()
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // How many rows in a tableView
        return youtubeModels.count
    }
    

}

