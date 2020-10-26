//
//  SizeViewController.swift
//  AnimationTest
//
//  Created by user177273 on 10/26/20.
//


import UIKit

class SizeViewController: UIViewController {

    @IBOutlet weak var sizeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        sizeImageView.transform = .identity
        
        var affineTransform = CGAffineTransform.identity
        affineTransform = affineTransform.scaledBy(x: 2, y: 2)
        
        UIView.animate(withDuration: 2, animations: {self.sizeImageView.transform = affineTransform})
        
    }

}
