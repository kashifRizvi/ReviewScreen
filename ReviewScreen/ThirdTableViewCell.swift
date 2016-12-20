//
//  ThreeTableViewCell.swift
//  ReviewScreen
//
//  Created by Kashif on 15/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {

    var delegate: ThirdCellProtocol?
    
    @IBOutlet weak var childCareOutlet: UIButton!
    @IBOutlet weak var petCareOutlet: UIButton!
    @IBOutlet weak var seniorCareOutlet: UIButton!
    @IBOutlet weak var housekeepingOutlet: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        childCareOutlet.layer.cornerRadius = 15
        childCareOutlet.layer.borderWidth = 1
        childCareOutlet.layer.borderColor = UIColor.black.cgColor
        
        petCareOutlet.layer.cornerRadius = 15
        petCareOutlet.layer.borderWidth = 1
        petCareOutlet.layer.borderColor = UIColor.black.cgColor
        
        seniorCareOutlet.layer.cornerRadius = 15
        seniorCareOutlet.layer.borderWidth = 1
        seniorCareOutlet.layer.borderColor = UIColor.black.cgColor
        
        housekeepingOutlet.layer.cornerRadius = 15
        housekeepingOutlet.layer.borderWidth = 1
        housekeepingOutlet.layer.borderColor = UIColor.darkGray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
