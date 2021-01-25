//
//  ViewController.swift
//  TestSpinApp
//
//  Created by Serhii Demianenko on 25.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let image1 = UIImage(named: "apple")
    let image2 = UIImage(named: "cherry")
    let image3 = UIImage(named: "star")
    
    func randomImage(image: UIImageView?) -> UIImage? {
        let images = [image1, image2, image3]
        let randomImage = images.randomElement()
        
        return randomImage as? UIImage
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var slot1: UIImageView!
    @IBOutlet weak var slot2: UIImageView!
    @IBOutlet weak var slot3: UIImageView!
    var image: UIImage?
    
    @IBAction func spinButton(_ sender: Any) {
        self.slot1.image = changeImage1()
        self.slot2.image = changeImage2()
        self.slot3.image = changeImage3()
    }
    
    func changeImage1() -> UIImage? {
        let image = randomImage(image: slot1)
        return image
    }
    
    func changeImage2() -> UIImage? {
        let image = randomImage(image: slot2)
        return image
    }
    
    func changeImage3() -> UIImage? {
        let image = randomImage(image: slot3)
        return image
    }

}

