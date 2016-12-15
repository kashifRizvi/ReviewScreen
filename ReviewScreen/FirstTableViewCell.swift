//
//  FirstTableViewCell.swift
//  ReviewScreen
//
//  Created by Kashif on 15/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBAction func starOneAction(_ sender: UIButton) {
        sender.imageView?.image = UIImage(named: "emptyStar")
    }
    @IBAction func straTwoAction(_ sender: UIButton) {
    }
    @IBAction func starThreeAction(_ sender: UIButton) {
    }
    @IBAction func starFourAction(_ sender: UIButton) {
    }
    @IBAction func starFiveAction(_ sender: UIButton) {
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
