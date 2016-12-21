//
//  SeventhTableViewCell.swift
//  ReviewScreen
//
//  Created by Kashif on 19/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class SeventhTableViewCell: UITableViewCell, textViewProtocol, UITextViewDelegate {

    var delegate : SeventhCellProtocol?
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textViewOutlet.text = "ascjhcbakewjhc kjaec nbaw ck askcbkjwhebcjhaebljrhebfjhbearjhvgeljvbkajshncvlkajshlkcnrwi nclkwan ofinwlkjcrn3oialv kj"
        NotificationCenter.default.addObserver(self, selector: #selector(SeventhTableViewCell.segueToRemarksScreen), name: NSNotification.Name.UITextViewTextDidBeginEditing, object: self)
//        self.textViewOutlet.delegate = self
    }
    
//    func textViewDidBeginEditing(_ textView: UITextView){
//        delegate?.segueTo(cell: self)
//    }
    
    func segueToRemarksScreen(){
        delegate?.segueTo(cell: self)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTextViewText(withText: String?) {
        self.textViewOutlet.text = withText
    }

}
