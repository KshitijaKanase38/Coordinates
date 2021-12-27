//
//  ThirdViewController.swift
//  Coordinates
//
//  Created by Coditas on 17/12/21.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBAction func nextScreen(_ sender: UIButton) {
        let fourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController")
        fourthViewController?.modalPresentationStyle = .fullScreen
        self.present(fourthViewController!, animated:true, completion:nil)
    }
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let width: CGFloat = 374
        let height: CGFloat = 723
        
        let demoView2 = DemoView3(frame: CGRect(x: 20,
                                              y: 54,
                                              width: width   ,     height: height
        )
        )
        
        image.image = UIImage(named: "leftTop")
        self.view.addSubview(demoView2)
        
    }
   
}
