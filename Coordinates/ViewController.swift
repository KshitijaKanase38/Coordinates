//
//  ViewController.swift
//  Coordinates
//
//  Created by Coditas on 01/12/21.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var footImage: UIImageView!
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let width: CGFloat = 374
        let height: CGFloat = 723
        
        let demoView = DemoView(frame: CGRect(x: 20,
                                              y: 54,
                                              width: width   ,     height: height
        )
        )
        
        footImage.image = UIImage(named: "foot")
        self.view.addSubview(demoView)
    }
    
    @IBAction func nextScreen(_ sender: UIButton) {
        
      
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        secondViewController?.modalPresentationStyle = .fullScreen
//        let currentViewController = UIApplication.shared.keyWindow?.rootViewController
//        currentViewController?.dismiss(animated: true, completion: nil)
        self.present(secondViewController!, animated:true, completion:nil)
    }
    
}

