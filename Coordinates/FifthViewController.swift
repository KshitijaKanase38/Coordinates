//
//  FifthViewController.swift
//  Coordinates
//
//  Created by Coditas on 17/12/21.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width: CGFloat = 374
        let height: CGFloat = 723
        
        let demoView2 = DemoView5(frame: CGRect(x: 20,
                                              y: 54,
                                              width: width   ,     height: height
        )
        )
        
        image.image = UIImage(named: "rightFoot")
        self.view.addSubview(demoView2)
    }
    
}
