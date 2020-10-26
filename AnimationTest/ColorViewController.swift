//
//  ColorViewController.swift
//  AnimationTest
//
//  Created by user177273 on 10/26/20.
//


import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var colorImageView: UIImageView!
    
    var animationEndMessage = UIAlertController(title: "Alert", message: "The animation has ended", preferredStyle: .alert)

    let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
        print("OK PRESSED")
     })
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        animationEndMessage.addAction(ok)
        
    }

    override func viewDidAppear(_ animated: Bool){
        
        colorImageView.backgroundColor = .gray
        UIView.animate(withDuration: 1, animations: {self.colorImageView.backgroundColor = .red}, completion: {finished in
            
            self.present(self.animationEndMessage, animated: true, completion: nil)
            
        })
        
    }

}
