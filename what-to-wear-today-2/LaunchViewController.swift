//
//  LaunchViewController.swift
//  what-to-wear-today-2
//
//  Created by 김세진 on 2020/06/20.
//  Copyright © 2020 sanglee. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBOutlet weak var icon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "clothes.png")
        icon.image = image
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