//
//  ViewController.swift
//  PartyRockApp
//
//  Created by luka on 26/10/2016.
//  Copyright © 2016 luka. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let p1 = PartyRock(imageURL: "http://i44.tinypic.com/vwwj69.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/t7hL0LrmBj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Smoke some weed")
        let p2 = PartyRock(imageURL: "http://i41.tinypic.com/okcz1t.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/t7hL0LrmBj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Smoke some weed")
        let p3 = PartyRock(imageURL: "http://i39.tinypic.com/257elut.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/t7hL0LrmBj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Smoke some weed")
        let p4 = PartyRock(imageURL: "http://i43.tinypic.com/4vqtj6.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/t7hL0LrmBj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Smoke some weed")
        let p5 = PartyRock(imageURL: "http://i66.tinypic.com/1zlrb6h.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/t7hL0LrmBj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Smoke some weed")

        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        tableView.delegate = self
        tableView.dataSource = self
    }
// recycle cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
        } else {
            return UITableViewCell()
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

}

