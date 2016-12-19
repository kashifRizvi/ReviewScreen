//
//  ViewController.swift
//  ReviewScreen
//
//  Created by Kashif on 15/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, FirstCellProtocol, SecondCellProtocol, ThirdCellProtocol, FourthCellProtocol, FifthCellProtocol, SixthCellProtocol, SeventhCellprotocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        
        let cellIdentifier = "cell" + String(indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        switch row {
        case 0:
            if let cell = cell as? FirstTableViewCell{
                cell.delegate = self
            }
        case 1:
            if let cell = cell as? SecondTableViewCell{
                cell.delegate = self
                
                
                cell.hiredButtonOutlet.layer.cornerRadius = 15
                cell.hiredButtonOutlet.layer.borderWidth = 1
                cell.hiredButtonOutlet.layer.borderColor = UIColor.darkGray.cgColor
                
                cell.interviewedButtonOutlet.layer.cornerRadius = 15
                cell.interviewedButtonOutlet.layer.borderWidth = 1
                cell.interviewedButtonOutlet.layer.borderColor = UIColor.darkGray.cgColor
                
                cell.OtherButtonOutlet.layer.cornerRadius = 15
                cell.OtherButtonOutlet.layer.borderWidth = 1
                cell.OtherButtonOutlet.layer.borderColor = UIColor.darkGray.cgColor
            }
        case 2:
            if let cell = cell as? ThirdTableViewCell{
                cell.delegate = self
            }
        case 3:
            if let cell = cell as? FourthTableViewCell{
                cell.delegate = self
            }
        case 4:
            if let cell = cell as? FifthTableViewCell{
                cell.delegate = self
            }
        case 5:
            if let cell = cell as? SixthTableViewCell{
                cell.delegate = self
            }
        case 6:
            if let cell = cell as? SeventhTableViewCell{
                cell.delegate = self
            }
        default:
            print("Cell class not found!!")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let row = indexPath.row
        
        switch row {
        case 0:
            return 100
        case 1:
            return 100
        case 2:
            return 165
        default:
            return 100
        }
    }
    
    func checkOneStar(cell: FirstTableViewCell) {
        cell.starOneAction(cell.oneOutlet)
        
    }
    func checkTwoStars(cell: FirstTableViewCell) {
        cell.starTwoAction(cell.twoOutlet)
        
    }
    func checkThreeStars(cell: FirstTableViewCell) {
        cell.starThreeAction(cell.threeOutlet)
        
    }
    func checkFourStars(cell: FirstTableViewCell) {
        cell.starFourAction(cell.fourOutlet)
    }
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}
