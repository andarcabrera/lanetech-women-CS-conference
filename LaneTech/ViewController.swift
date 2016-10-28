//
//  ViewController.swift
//  LaneTech
//
//  Created by Anda Cabrera on 10/21/16.
//  Copyright © 2016 Anda Cabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentImagePosition = 0
    
    let images = ["ghopper1.jpeg", "ghopper2.jpeg", "ghopper3.jpeg", "ghopper4.jpeg"]
    
    func getNextImage() -> String {
        currentImagePosition = self.currentImagePosition + 1
        if (currentImagePosition == images.count - 1) {
            self.currentImagePosition = 0
        }
        return images[currentImagePosition]
    }

    @IBOutlet weak var hopperImage: UIImageView!
    
    
    @IBAction func changeImage(_ sender: AnyObject) {
        hopperImage.image=UIImage(named: getNextImage())
    }
    
    
    @IBAction func moreInfo(_ sender: AnyObject) {
        if let url = URL(string: "https://www.hackingwithswift.com") {
            UIApplication.shared.open(url, options: [:])
        }
    }
}

