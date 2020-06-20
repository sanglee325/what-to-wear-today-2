//
//  RecommendViewController.swift
//  what-to-wear-today-2
//
//  Created by 김세진 on 2020/06/20.
//  Copyright © 2020 sanglee. All rights reserved.
//

import UIKit

class RecommendViewController: UIViewController {

    @IBOutlet weak var Best2: UIImageView!
    @IBOutlet weak var Best3: UIImageView!
    @IBOutlet weak var Best4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image2 = UIImage(named: "2_2.jpeg")
        Best2.image = image2
        let image3 = UIImage(named: "2_3.jpeg")
        Best3.image = image3
        let image4 = UIImage(named: "2_4.jpeg")
        Best4.image = image4

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
