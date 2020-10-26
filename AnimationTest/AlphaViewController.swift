//
//  AlphaViewController.swift
//  AnimationTest
//
//  Created by user177273 on 10/26/20.
//


import UIKit

class AlphaViewController: UIViewController {

    @IBOutlet weak var alphaImageView: UIImageView!
    
    var animationEndMessage = UIAlertController(title: "Alert", message: "The animation has ended", preferredStyle: .alert)

    let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
        print("OK PRESSED")
     })
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        animationEndMessage.addAction(ok)
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        alphaImageView.alpha = 0
        UIView.animate(withDuration: 1, animations: {self.alphaImageView.alpha = 1}, completion: {finished in
            
            self.present(self.animationEndMessage, animated: true, completion: nil)
            
        })
    }


}
