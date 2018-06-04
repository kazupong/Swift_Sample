//
//  PreviewViewController.swift
//  Swift_Sample
//
//  Created by Kazuyuki Nakatsu on 6/1/18.
//  Copyright © 2018 Kazuyuki Nakatsu. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {
    
    var image: UIImage!
    @IBOutlet weak var photo: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        photo.image = self.image
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // CancelボタンのAction：dismissして戻る
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    // SaveボタンのAction: 撮った写真をアルバムに保存
    @IBAction func SaveButton(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        dismiss(animated: true, completion: nil)
    }
    // CropボタンのAction: Crop用Viewに飛ぶ
    @IBAction func CropButton(_ sender: Any) {
        performSegue(withIdentifier: "Crop_Segue", sender: nil)
    }
   
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
