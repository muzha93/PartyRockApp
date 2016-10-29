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
        let p1 = PartyRock(imageURL: "http://tinypic.com/r/vwwj69/5", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/t7hL0LrmBj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Smoke some weed")
        partyRocks.append(p1)
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

