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
    @IBOutlet weak var Best1: UIImageView!
    
    var final_temperature: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "2_1.jpeg")
        Best1.image = image
        
        let str_temperature = NSString(format: "%.1f", final_temperature)
        displayTemperature.text = "입력하신 기온은 " + (str_temperature as String) + "도 입니다."
        // Do any additional setup after loading the view.
    }

    
    @IBAction func gotoHome(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
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
