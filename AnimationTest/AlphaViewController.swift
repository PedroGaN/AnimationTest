//
//  AlphaViewController.swift
//  AnimationTest
//
//  Created by user177273 on 10/26/20.
//


import UIKit

class AlphaViewController: UIViewController {

    @IBOutlet weak var alphaImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        alphaImageView.alpha = 0
        UIView.animate(withDuration: 1, animations: {self.alphaImageView.alpha = 1})
    }


}
