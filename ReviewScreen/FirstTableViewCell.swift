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

    var ratings : Int8 = 0
    
    @IBOutlet weak var oneOutlet: UIButton!
    @IBOutlet weak var twoOutlet: UIButton!
    @IBOutlet weak var threeOutlet: UIButton!
    @IBOutlet weak var fourOutlet: UIButton!
    @IBOutlet weak var fiveOutlet: UIButton!
    
    @IBAction func starOneAction(_ sender: UIButton) {
        if ratings < 1{
            ratings = 1
        }
        sender.setImage(UIImage(named: "highlightedStar.png"), for: .normal)
        delegate?.checkZeroStar(cell: self, ratings: ratings)
    }
    @IBAction func starTwoAction(_ sender: UIButton) {
        if ratings < 2{
            ratings = 2
        }
        sender.setImage(UIImage(named: "highlightedStar.png"), for: .normal)
        delegate?.checkOneStar(cell: self, ratings: ratings)
    }
    @IBAction func starThreeAction(_ sender: UIButton) {
        if ratings < 3{
            ratings = 3
        }
        sender.setImage(UIImage(named: "highlightedStar.png"), for: .normal)
        delegate?.checkTwoStars(cell: self, ratings: ratings)
    }
    @IBAction func starFourAction(_ sender: UIButton) {
        if ratings < 4{
            ratings = 4
        }
        sender.setImage(UIImage(named: "highlightedStar.png"), for: .normal)
        delegate?.checkThreeStars(cell: self, ratings: ratings)
    }
    @IBAction func starFiveAction(_ sender: UIButton) {
        if ratings < 5{
            ratings = 5
        }
        sender.setImage(UIImage(named: "highlightedStar.png"), for: .normal)
        delegate?.checkFourStars(cell: self, ratings: ratings)
        
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
