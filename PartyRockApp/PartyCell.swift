//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by luka on 26/10/2016.
//  Copyright © 2016 luka. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUI (partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //todo za sliku jos moras
    }
    
    

}
