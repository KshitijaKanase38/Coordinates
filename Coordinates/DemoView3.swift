//
//  DemoView3.swift
//  Coordinates
//
//  Created by Coditas on 17/12/21.
//

import UIKit

class DemoView3: UIView {

    var valueToBeSaved : String!
    let textLayer_1 = CATextLayer()
    let textLayer_2 = CATextLayer()
   
    var finger_1 = UIBezierPath()
    var finger_2 = UIBezierPath()
   
    let shapeLayer1 = CAShapeLayer()
    let shapeLayer2 = CAShapeLayer()
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        override init(frame: CGRect) {
        super.init(frame: frame)
       // self.subviewDelegate = self
        self.backgroundColor = UIColor.clear
        drawTextLayers()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        let location = touch.location(in: self)
        print(location)
        allPaths(location: location)
        //point(location: location)
        
    }
    func allPaths(location: CGPoint) {
        
        drawComplexAreas()
        shapeLayer1.path = finger_1.cgPath
        shapeLayer2.path = finger_2.cgPath
       
        
        [shapeLayer1,shapeLayer2].forEach { (path) in
            path.fillColor = UIColor.clear.cgColor
            self.layer.addSublayer(path)
        }
        [shapeLayer1,shapeLayer2].forEach { (path) in
            path.lineWidth = 3.0
            path.strokeColor = UIColor.gray.cgColor
        }
        if finger_1.contains(location) {
            print("finger_1")
            takeValueForArea("finger_1", coordinates: textLayer_1)
            shapeLayer1.lineWidth = 3
            shapeLayer1.strokeColor = UIColor.systemGreen.cgColor
        }
        if finger_2.contains(location) {
            print("finger_2")
            takeValueForArea("finger_2", coordinates: textLayer_2)
            shapeLayer2.lineWidth = 3
            shapeLayer2.strokeColor = UIColor.systemGreen.cgColor
        }
     
    }
    func saveValue(_ key: String,coordinates : CATextLayer){
        let userDefaults = UserDefaults()
        userDefaults.setValue(valueToBeSaved, forKey: key)
        let value = UserDefaults.standard.integer(forKey: key)
        drawTextLayers()
        updateNumbers(coordinates: coordinates, value: "\(value)")
        print("this is the value for \(key) :", value)
    }
    func takeValueForArea(_ string: String ,coordinates : CATextLayer) {
        let alert = UIAlertController(title: "Assign Number", message: "Please enter number", preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "Save !", style: .default) { [self] (alertAction) in
            let textField = alert.textFields![0] as UITextField
            self.valueToBeSaved = textField.text
            saveValue(string, coordinates: coordinates)
         //   self.subviewDelegate.shouldRemoveSubview(sender: self)
        }
        alert.addTextField { (textField) in
            textField.placeholder = "e.g 12345"
        }
        alert.addAction(action)
        //self.subviewDelegate.displayAlert(alert: alert)
        
        UIApplication.shared.windows.last?.rootViewController?.present(alert, animated: true)
    }
    
    func updateNumbers(coordinates : CATextLayer, value: String){
        if value != "0" {
            coordinates.string = value
            print(value)
        }else{
            coordinates.string = ""
        }
    }
    
    func drawTextLayers(){
        
        [textLayer_1,textLayer_2].forEach { (textlayer) in
            textlayer.foregroundColor = UIColor.black.cgColor
            textlayer.font = UIFont(name: "Avenir", size: 10.0)
            textlayer.fontSize = 20
            textlayer.alignmentMode = CATextLayerAlignmentMode.center
            textlayer.backgroundColor = UIColor.clear.cgColor
            textlayer.contentsScale = UIScreen.main.scale
            self.layer.addSublayer(textlayer)
        }
        textLayer_1.frame = CGRect(x: 30,y: 288,width: 69,height: 92)
        textLayer_2.frame = CGRect(x: 347,y: 173,width: 41,height: 54)
       
        let array = [textLayer_1,textLayer_1,textLayer_2]
        let shapes = ["","finger_1","finger_2","finger_3"]
        
        for i in 1...2 {
            let value = UserDefaults.standard.integer(forKey: shapes[i])
            if value != 0{
                array[i].string = "\(value)"
                print(value)
            }
            else{
                array[i].string = ""
            }
        }
    }
    func drawComplexAreas(){
        finger_2.move(to: CGPoint(x: 285, y: 105))
        finger_2.addCurve(to: CGPoint(x:284,y: 376),
                          
                         controlPoint1: CGPoint(x: 292, y: 150),
                         controlPoint2: CGPoint(x: 350, y: 245))
        
        finger_2.addLine(to: CGPoint(x:301,y: 256))
        
        finger_2.addCurve(to: CGPoint(x: 285, y: 105),
                         controlPoint1: CGPoint(x: 280, y: 140),
                         controlPoint2: CGPoint(x: 295, y: 142))


        finger_2.close()
        //self.finger_1 = UIBezierPath(ovalIn: CGRect(x: 245.0,y: 36.0,width: 69,height: 92))
        finger_1.move(to: CGPoint(x: 124, y: 423))
        finger_1.addCurve(to: CGPoint(x: 81, y: 235),
                          
                         controlPoint1: CGPoint(x: 65, y: 280),
                         controlPoint2: CGPoint(x: 103, y: 250))
        
        
        finger_1.addCurve(to: CGPoint(x: 124, y: 423),
                         controlPoint1: CGPoint(x: 81, y: 265),
                         controlPoint2: CGPoint(x: 51, y: 308))
        finger_1.close()
        
    }
}
