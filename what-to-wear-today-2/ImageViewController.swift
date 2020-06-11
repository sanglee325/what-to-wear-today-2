//
//  ImageViewController.swift
//  what-to-wear-today-2
//
//  Created by 김세진 on 2020/06/11.
//  Copyright © 2020 sanglee. All rights reserved.
//

// 이미지 전송?
import UIKit

class ImageViewController: UIViewController {

//    @IBOutlet weak var myImage: UIImageView!
//    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
/*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            let viewController : CodyViewController = segue.destination as! CodyViewController
            //viewController.delegate = self
            viewController.delegate2 = self
        }
        
    }
 */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
/*
extension ImageViewController :  SendDataDelegate {
    
    func sendImage(data: UIImage) {
        myImage.image = data
    }
 
    func sendData(data: String) {
        myLabel.text = data
    }
}
 */
