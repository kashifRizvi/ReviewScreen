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

    @IBOutlet weak var hiredButtonOutlet: UIButton!
    @IBOutlet weak var interviewedButtonOutlet: UIButton!
    @IBOutlet weak var OtherButtonOutlet: UIButton!

    
    @IBAction func hiredAction(_ sender: UIButton) {
        print("Hired action pressed !")

        sender.backgroundColor = UIColor.lightGray
        sender.setTitleColor(UIColor.white, for: .normal)
        clearSelection(hired: false, interviewed: true, other: true)
        delegate?.interactionSelected(cell: self, methodName: "Hired")
    }
    @IBAction func interviewedAction(_ sender: UIButton) {
        print("Interviewed action pressed !")

        sender.backgroundColor = UIColor.lightGray
        sender.setTitleColor(UIColor.white, for: .normal)
        clearSelection(hired: true, interviewed: false, other: true)
        delegate?.interactionSelected(cell: self, methodName: "Interviewed")
        
    }
    @IBAction func otherAction(_ sender: UIButton) {
        print("Other action pressed !")
        
        sender.backgroundColor = UIColor.lightGray
        sender.setTitleColor(UIColor.white, for: .normal)
        clearSelection(hired: true, interviewed: true, other: false)
        delegate?.interactionDeselected(cell: self)

    }
    
    func clearSelection(hired: Bool, interviewed: Bool, other:Bool){
        if hired{
            hiredButtonOutlet.backgroundColor = UIColor.white
            hiredButtonOutlet.setTitleColor(UIColor.black, for: .normal)
        }
        if interviewed{
            interviewedButtonOutlet.backgroundColor = UIColor.white
            interviewedButtonOutlet.setTitleColor(UIColor.black, for: .normal)
        }
        if other{
            OtherButtonOutlet.backgroundColor = UIColor.white
            OtherButtonOutlet.setTitleColor(UIColor.black, for: .normal)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        hiredButtonOutlet.layer.cornerRadius = 15
        hiredButtonOutlet.layer.borderWidth = 1
        hiredButtonOutlet.layer.borderColor = UIColor.darkGray.cgColor
        
        interviewedButtonOutlet.layer.cornerRadius = 15
        interviewedButtonOutlet.layer.borderWidth = 1
        interviewedButtonOutlet.layer.borderColor = UIColor.darkGray.cgColor
        
        OtherButtonOutlet.layer.cornerRadius = 15
        OtherButtonOutlet.layer.borderWidth = 1
        OtherButtonOutlet.layer.borderColor = UIColor.darkGray.cgColor
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
