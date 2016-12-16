//
//  ViewController.swift
//  ReviewScreen
//
//  Created by Kashif on 15/12/16.
//  Copyright © 2016 Kashif. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, FirstCellProtocol, SecondCellProtocol, ThirdCellProtocol, FourthCellProtocol, FifthCellProtocol {

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
        default:
            print("Cell class not found!!")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == 0 {
            return 100
//        }
//        return 80
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
