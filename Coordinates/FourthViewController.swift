//
//  FourthViewController.swift
//  Coordinates
//
//  Created by Coditas on 17/12/21.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let width: CGFloat = 374
        let height: CGFloat = 723
        
        let demoView2 = DemoView4(frame: CGRect(x: 20,
                                              y: 54,
                                              width: width   ,     height: height
        )
        )
        
        image.image = UIImage(named: "rightTop")
        self.view.addSubview(demoView2)
        
    }
    @IBAction func nextScreen(_ sender: UIButton) {
        let fifthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController")
        fifthViewController?.modalPresentationStyle = .fullScreen
        self.present(fifthViewController!, animated:true, completion:nil)
    }
}
