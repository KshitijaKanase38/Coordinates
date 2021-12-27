//
//  SecondViewController.swift
//  Coordinates
//
//  Created by Coditas on 10/12/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var leftFootImage: UIImageView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // let view = DemoView2(parentViewController: self)
        let width: CGFloat = 374
        let height: CGFloat = 723

        let demoView2 = DemoView2(frame: CGRect(x: 20,
                                              y: 54,
                                              width: width   ,     height: height
        )
        )
        
        leftFootImage.image = UIImage(named: "leftFoot")
        self.view.addSubview(demoView2)
        
    }
    
    @IBAction func newScreen(_ sender: UIButton) {
        let thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController")
        thirdViewController?.modalPresentationStyle = .fullScreen
        self.present(thirdViewController!, animated:true, completion:nil)
    }
//    func addalert(_ string: String ,coordinates : CATextLayer){
//        let demo2 = DemoView2()
//        let alert = UIAlertController(title: "Assign Number", message: "Please enter number", preferredStyle: UIAlertController.Style.alert)
//        let action = UIAlertAction(title: "Save !", style: .default) { [self] (alertAction) in
//            UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: nil)
//            let textField = alert.textFields![0] as UITextField
//            demo2.valueToBeSaved = textField.text
//            demo2.saveValue(string, coordinates: coordinates)
//
//        }
//        alert.addTextField { (textField) in
//            textField.placeholder = "e.g 12345"
//        }
//        alert.addAction(action)
//
//       self.present(alert, animated: true)
//    }

}
