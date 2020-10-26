//
//  PositionViewController.swift
//  AnimationTest
//
//  Created by user177273 on 10/26/20.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var positionImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*positionImageView.center = CGPoint(x: 20, y: 20)
        UIView.animate(withDuration: 2, animations: {
        self.positionImageView.center = CGPoint(x: 100, y: 100)
        }), completion: { animationFinish in
        self.positionImageView.bounds = CGRect(x: 100, y: 100,
        width: 150, height: 150)
        })*/
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        positionImageView.center = CGPoint(x: 20, y: 20)
        UIView.animate(withDuration: 2, animations: {
        self.positionImageView.center = CGPoint(x: 100, y: 100)
        })
    }


}
