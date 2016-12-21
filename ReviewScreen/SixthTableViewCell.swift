//
//  SixthTableViewCell.swift
//  ReviewScreen
//
//  Created by Kashif on 19/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class SixthTableViewCell: UITableViewCell {
    var delegate : SixthCellProtocol?

    @IBAction func isDependableAction(_ sender: UIButton) {
        delegate?.isDependable(cell: self, withValue: (sender.titleLabel?.text)!)
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
