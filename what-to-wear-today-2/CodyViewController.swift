//
//  CodyViewController.swift
//  what-to-wear-today-2
//
//  Created by 박 상리 on 2020/05/30.
//  Copyright © 2020 sanglee. All rights reserved.
//

import UIKit

class CodyViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let picker = UIImagePickerController()
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
    }
   
    
    @IBAction func addAction(_ sender: Any) {
        let alert = UIAlertController(title: "옷을 가져올거야",   message: "어디서 가져올래?", preferredStyle: .actionSheet)
        let library = UIAlertAction(title: "앨범에서 가져오기", style: .default){
            (action) in self.openLibrary()
        }
        let camera = UIAlertAction(title: "사진 찍기", style: .default){
            (action) in self.openCamera()
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(library)
        alert.addAction(camera)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    func openLibrary(){
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    func openCamera(){
        picker.sourceType = .camera
        present(picker, animated: false, completion: nil)
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
