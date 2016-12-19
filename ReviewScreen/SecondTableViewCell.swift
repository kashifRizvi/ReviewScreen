//
//  SecondTableViewCell.swift
//  ReviewScreen
//
//  Created by Kashif on 15/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    var delegate: SecondCellProtocol?
    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        
//        super.init(style: .subtitle , reuseIdentifier: reuseIdentifier)
//        
//        hiredButtonOutlet.layer.cornerRadius = 15
//        hiredButtonOutlet.layer.borderWidth = 1
//        hiredButtonOutlet.layer.borderColor = UIColor.darkGray.cgColor
//        
//        interviewedButtonOutlet.layer.cornerRadius = 15
//        interviewedButtonOutlet.layer.borderWidth = 1
//        interviewedButtonOutlet.layer.borderColor = UIColor.darkGray.cgColor
//        
//        OtherButtonOutlet.layer.cornerRadius = 15
//        OtherButtonOutlet.layer.borderWidth = 1
//        OtherButtonOutlet.layer.borderColor = UIColor.darkGray.cgColor
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        
//        fatalError("init(coder:) has not been implemented")
//    }

    @IBOutlet weak var hiredButtonOutlet: UIButton!
    @IBOutlet weak var interviewedButtonOutlet: UIButton!
    @IBOutlet weak var OtherButtonOutlet: UIButton!

    
    @IBAction func hiredAction(_ sender: UIButton) {
        print("Hired action pressed !")

        sender.backgroundColor = UIColor.lightGray
        sender.setTitleColor(UIColor.white, for: .normal)
    }
    @IBAction func interviewedAction(_ sender: UIButton) {
        print("Interviewed action pressed !")

        sender.backgroundColor = UIColor.lightGray
        sender.setTitleColor(UIColor.white, for: .normal)
    }
    @IBAction func otherAction(_ sender: UIButton) {
        print("Other action pressed !")
        
        sender.backgroundColor = UIColor.lightGray
        sender.setTitleColor(UIColor.white, for: .normal)

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
