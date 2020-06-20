//
//  CodyViewController.swift
//  what-to-wear-today-2
//
//  Created by 박 상리 on 2020/05/30.
//  Copyright © 2020 sanglee. All rights reserved.
//

import UIKit

class CodyViewController: UIViewController {

    let picker = UIImagePickerController()
  
    @IBOutlet weak var temperature: UITextField!
    @IBOutlet weak var completeButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var informText: UILabel!
    
    var temperature_val : Float = 10.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        self.completeButton.isEnabled = false
    }
    /*
    @IBAction func move_next(_ sender: Any) { //segue를 이용한 데이터 전달 <- 스타일보드에서 무조건 segue작업해줘야함
         performSegue(withIdentifier: "move_data", sender: self)
         //여기서 "name"은 스토리보드에서 segue를 연결후 Identifier에 지정한 명칭이다.
     }
     */
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // segue를 이용한 데이터 전달
         temperature_val = (temperature.text! as NSString).floatValue
         let viewController = segue.destination as! ImageViewController
         viewController.final_temperature = temperature_val //여기서 as는 자바에서 class에 상속(extent)과 같은 개념이다.
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
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
            picker.sourceType = .camera
            present(picker, animated: false, completion: nil)
        } else {
            print("Camera is not available in simulator")
        }
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

extension CodyViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imageView.image = image
            print(info)
            self.completeButton.isEnabled = true
            self.informText.isHidden = true
        }
        dismiss(animated: true, completion: nil)
    }

}
