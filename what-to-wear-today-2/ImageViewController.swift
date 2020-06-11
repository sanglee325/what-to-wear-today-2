//
//  ImageViewController.swift
//  what-to-wear-today-2
//
//  Created by 김세진 on 2020/06/11.
//  Copyright © 2020 sanglee. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var displayTemperature: UITextView!
    var final_temperature: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str_temperature = NSString(format: "%.2f", final_temperature)
        displayTemperature.text = str_temperature as String
        // Do any additional setup after loading the view.
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
