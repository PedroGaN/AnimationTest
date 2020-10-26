//
//  ColorViewController.swift
//  AnimationTest
//
//  Created by user177273 on 10/26/20.
//


import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var colorImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool){
        
        colorImageView.backgroundColor = .gray
        UIView.animate(withDuration: 1, animations: {self.colorImageView.backgroundColor = .red})
        
    }

}
