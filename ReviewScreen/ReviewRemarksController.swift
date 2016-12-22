//
//  ReviewRemarksControllerViewController.swift
//  ReviewScreen
//
//  Created by Kashif on 21/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class ReviewRemarksController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var reviewTextView: UITextView!
    var holdText = String()
    
    var delegate : textViewProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.delegate = self
        // Do any additional setup after loading the view.
        self.reviewTextView.text = holdText
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        print("will Show view controller")
        delegate?.setTextViewText(withText: self.reviewTextView.text)
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        print("DID show view controller")
        self.delegate?.setTextViewText(withText: self.reviewTextView.text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View will disappear")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
