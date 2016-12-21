//
//  FifthTableViewCell.swift
//  ReviewScreen
//
//  Created by Kashif on 15/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class FifthTableViewCell: UITableViewCell {

    var delegate: FifthCellProtocol?
    
    @IBAction func isPunctualAction(_ sender: UIButton) {
        delegate?.isPunctual(cell: self, withValue: (sender.titleLabel?.text)!)
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
