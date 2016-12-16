//
//  FirstTableViewCell.swift
//  ReviewScreen
//
//  Created by Kashif on 15/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    var delegate : FirstCellProtocol?

    @IBOutlet weak var oneOutlet: UIButton!
    @IBOutlet weak var twoOutlet: UIButton!
    @IBOutlet weak var threeOutlet: UIButton!
    @IBOutlet weak var fourOutlet: UIButton!
    @IBOutlet weak var fiveOutlet: UIButton!
    
    @IBAction func starOneAction(_ sender: UIButton) {
        sender.setImage(UIImage(named: "highlightedStar.png"), for: .normal)
    }
    @IBAction func starTwoAction(_ sender: UIButton) {
        sender.setImage(UIImage(named: "highlightedStar.png"), for: .normal)
        delegate?.checkOneStar(cell: self)
    }
    @IBAction func starThreeAction(_ sender: UIButton) {
        sender.setImage(UIImage(named: "highlightedStar.png"), for: .normal)
        delegate?.checkTwoStars(cell: self)
    }
    @IBAction func starFourAction(_ sender: UIButton) {
        sender.setImage(UIImage(named: "highlightedStar.png"), for: .normal)
        delegate?.checkThreeStars(cell: self)
    }
    @IBAction func starFiveAction(_ sender: UIButton) {
        sender.setImage(UIImage(named: "highlightedStar.png"), for: .normal)
        delegate?.checkFourStars(cell: self)
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
