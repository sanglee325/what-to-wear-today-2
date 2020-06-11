//
//  SecondViewController.swift
//  
//
//  Created by 김세진 on 2020/06/11.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myOutlet: UILabel!
    
    var final_name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        myOutlet.text = final_name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
