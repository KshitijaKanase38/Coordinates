//
//  DemoView.swift
//  Coordinates
//
//  Created by Coditas on 02/12/21.
//

import UIKit

class DemoView: UIView {
    var valueToBeSaved : String!
    var path: UIBezierPath!
    var finger_1: UIBezierPath!
    var finger_2: UIBezierPath!
    var finger_3: UIBezierPath!
    var finger_4: UIBezierPath!
    var finger_5: UIBezierPath!
    let shape_1 = UIBezierPath()
    let shape_2 = UIBezierPath()
    let shape_3 = UIBezierPath()
    let shape_4 = UIBezierPath()
    let shape_5 = UIBezierPath()
    var circle_1: UIBezierPath!
    var circle_2: UIBezierPath!
    var circle_3: UIBezierPath!
    var circle_4: UIBezierPath!
    var circle_5: UIBezierPath!
    let textLayer_1 = CATextLayer()
    let textLayer_2 = CATextLayer()
    let textLayer_3 = CATextLayer()
    let textLayer_4 = CATextLayer()
    let textLayer_5 = CATextLayer()
    let textLayer_6 = CATextLayer()
    let textLayer_7 = CATextLayer()
    let textLayer_8 = CATextLayer()
    let textLayer_9 = CATextLayer()
    let textLayer_10 = CATextLayer()
    let textLayer_11 = CATextLayer()
    let textLayer_12 = CATextLayer()
    let textLayer_13 = CATextLayer()
    let textLayer_14 = CATextLayer()
    let textLayer_15 = CATextLayer()
    
    
    let shapeLayer11 = CAShapeLayer()
    let shapeLayer12 = CAShapeLayer()
    let shapeLayer13 = CAShapeLayer()
    let shapeLayer14 = CAShapeLayer()
    let shapeLayer15 = CAShapeLayer()
    let shapeLayer1 = CAShapeLayer()
    let shapeLayer2 = CAShapeLayer()
    let shapeLayer3 = CAShapeLayer()
    let shapeLayer4 = CAShapeLayer()
    let shapeLayer5 = CAShapeLayer()
    let shapeLayer6 = CAShapeLayer()
    let shapeLayer7 = CAShapeLayer()
    let shapeLayer8 = CAShapeLayer()
    let shapeLayer9 = CAShapeLayer()
    let shapeLayer10 = CAShapeLayer()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        drawTextLayers()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        let location = touch.location(in: self)
        print(location)
        allPaths(location: location)
        //point(location: location)
        
    }
    
    func allPaths(location: CGPoint) {
        
        drawToes()
        drawComplexAreas()
        drawCircles()
        shapeLayer11.path = circle_1.cgPath
        shapeLayer12.path = circle_2.cgPath
        shapeLayer13.path = circle_3.cgPath
        shapeLayer14.path = circle_4.cgPath
        shapeLayer15.path = circle_5.cgPath
        shapeLayer1.path = finger_1.cgPath
        shapeLayer2.path = finger_2.cgPath
        shapeLayer3.path = finger_3.cgPath
        shapeLayer4.path = finger_4.cgPath
        shapeLayer5.path = finger_5.cgPath
        shapeLayer6.path = shape_1.cgPath
        shapeLayer7.path = shape_2.cgPath
        shapeLayer8.path = shape_3.cgPath
        shapeLayer9.path = shape_4.cgPath
        shapeLayer10.path = shape_5.cgPath

        [shapeLayer1,shapeLayer2,shapeLayer3,shapeLayer4,shapeLayer5,shapeLayer6,shapeLayer7,shapeLayer8,shapeLayer9,shapeLayer10,shapeLayer11,shapeLayer12,shapeLayer13,shapeLayer14,shapeLayer15].forEach { (path) in
            path.fillColor = UIColor.clear.cgColor
            self.layer.addSublayer(path)
        }
        [shapeLayer1,shapeLayer2,shapeLayer3,shapeLayer4,shapeLayer5,shapeLayer6,shapeLayer7,shapeLayer8,shapeLayer9,shapeLayer10,shapeLayer11,shapeLayer12,shapeLayer13,shapeLayer14,shapeLayer15].forEach { (path) in
            path.lineWidth = 3.0
            path.strokeColor = UIColor.yellow.cgColor
        }
        
        if shape_1.contains(location) {
            if !shape_3.contains(location) && !shape_2.contains(location) && !shape_4.contains(location){
                print("shape_1")
                takeValueForArea("shape_1", coordinates: textLayer_11)
                shapeLayer6.lineWidth = 3.0
                shapeLayer6.strokeColor = UIColor.systemGreen.cgColor
            }
        }
        if shape_1.contains(location) && shape_2.contains(location) {
            print("shape_2")
            takeValueForArea("shape_2", coordinates: textLayer_12)
            shapeLayer6.lineWidth = 3.0
            shapeLayer6.strokeColor = UIColor.gray.cgColor
            shapeLayer7.lineWidth = 3.0
            shapeLayer7.strokeColor = UIColor.systemGreen.cgColor
        }
        
        if shape_1.contains(location) && shape_3.contains(location) {
            print("shape_3")
            takeValueForArea("shape_3", coordinates: textLayer_13)
            shapeLayer6.lineWidth = 3
            shapeLayer6.strokeColor = UIColor.gray.cgColor
            shapeLayer8.lineWidth = 3
            shapeLayer8.strokeColor = UIColor.systemGreen.cgColor
        }
        
        if shape_1.contains(location) && shape_4.contains(location) {
            print("shape_4")
            takeValueForArea("shape_4", coordinates: textLayer_14)
            shapeLayer6.lineWidth = 3
            shapeLayer6.strokeColor = UIColor.gray.cgColor
            shapeLayer9.lineWidth = 3
            shapeLayer9.strokeColor = UIColor.systemGreen.cgColor
        }
        if shape_5.contains(location) {
            print("shape_5")
            takeValueForArea("shape_5", coordinates: textLayer_15)
            shapeLayer10.lineWidth = 3
            shapeLayer10.strokeColor = UIColor.systemGreen.cgColor
        }
        if circle_1.contains(location) {
            print("circle_1")
            takeValueForArea("circle_1", coordinates: textLayer_6)
            shapeLayer11.lineWidth = 3
            shapeLayer11.strokeColor = UIColor.systemGreen.cgColor
        }
        if circle_2.contains(location) {
            print("circle_2")
            takeValueForArea("circle_2", coordinates: textLayer_7)
            shapeLayer12.lineWidth = 3
            shapeLayer12.strokeColor = UIColor.systemGreen.cgColor
        }
        if circle_3.contains(location) {
            print("circle_3")
            takeValueForArea("circle_3", coordinates: textLayer_8)
            shapeLayer13.lineWidth = 3
            shapeLayer13.strokeColor = UIColor.systemGreen.cgColor
        }
        if circle_4.contains(location) {
            print("circle_4")
            takeValueForArea("circle_4", coordinates: textLayer_9)
            shapeLayer14.lineWidth = 3
            shapeLayer14.strokeColor = UIColor.systemGreen.cgColor
        }
        if circle_5.contains(location) {
            print("circle_5")
            takeValueForArea("circle_5", coordinates: textLayer_10)
            shapeLayer15.lineWidth = 3
            shapeLayer15.strokeColor = UIColor.systemGreen.cgColor
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
        if finger_3.contains(location) {
            print("finger_3")
            takeValueForArea("finger_3", coordinates: textLayer_3)
            shapeLayer3.lineWidth = 3
            shapeLayer3.strokeColor = UIColor.systemGreen.cgColor
        }
        if finger_4.contains(location) {
            print("finger_4")
            takeValueForArea("finger_4", coordinates: textLayer_4)
            shapeLayer4.lineWidth = 3
            shapeLayer4.strokeColor = UIColor.systemGreen.cgColor
        }
        if finger_5.contains(location) {
            print("finger_5")
            takeValueForArea("finger_5", coordinates: textLayer_5)
            //updateNumbers(coordinates: CGRect(x: 65,y: 271,width: 24.5,height: 33), key: "finger_5")
            shapeLayer5.lineWidth = 3
            shapeLayer5.strokeColor = UIColor.systemGreen.cgColor
        }
    }
    func printNumbers(_ key: String) -> String{
        let value = UserDefaults.standard.integer(forKey: key)
        if value != 0 {
            return "\(value)"
        }
        else{
            return ""
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
        }
        alert.addTextField { (textField) in
            textField.placeholder = "e.g 12345"
        }
        alert.addAction(action)
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
        
        
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
        
        [textLayer_1,textLayer_2,textLayer_3,textLayer_4,textLayer_5,textLayer_6,textLayer_7,textLayer_8,textLayer_9,textLayer_10,textLayer_11,textLayer_12,textLayer_13,textLayer_14,textLayer_15].forEach { (textlayer) in
            textlayer.foregroundColor = UIColor.black.cgColor
            textlayer.font = UIFont(name: "Avenir", size: 10.0)
            textlayer.fontSize = 25
            textlayer.alignmentMode = CATextLayerAlignmentMode.center
            textlayer.backgroundColor = UIColor.clear.cgColor
            textlayer.contentsScale = UIScreen.main.scale
            self.layer.addSublayer(textlayer)
        }
        textLayer_1.frame = CGRect(x: 215.0,y: 36.0,width: 69,height: 92)
        textLayer_2.frame = CGRect(x: 148.0,y: 57.0,width: 41,height: 54)
        textLayer_3.frame = CGRect(x: 121.0,y: 116.0,width: 32,height: 43)
        textLayer_4.frame = CGRect(x: 77.0,y: 172.5,width: 30.5,height: 39.8)
        textLayer_5.frame = CGRect(x: 45,y: 227,width: 24.5,height: 33)
        
        textLayer_6.frame = CGRect(x: 264,y: 241.9,width: 70,height: 70)
        textLayer_7.frame = CGRect(x: 195,y: 247.5,width: 47.5,height: 47.5)
        textLayer_8.frame = CGRect(x: 147,y: 273,width: 39,height: 39)
        textLayer_9.frame = CGRect(x: 102,y: 306.9,width: 35,height: 35)
        textLayer_10.frame = CGRect(x: 57,y: 347,width: 33,height: 33)
        
        textLayer_11.frame = CGRect(x: 123,y: 349,width: 30,height: 30)
        textLayer_12.frame = CGRect(x: 281,y: 466,width: 30,height: 30)
        textLayer_13.frame = CGRect(x: 171,y: 347,width: 30,height: 30)
        textLayer_14.frame = CGRect(x: 87,y: 457,width: 30,height: 30)
        textLayer_15.frame = CGRect(x: 124,y: 571,width: 30,height: 30)
        
        let array = [textLayer_1,textLayer_2,textLayer_3,textLayer_4,textLayer_5,textLayer_6,textLayer_7,
                     textLayer_8,textLayer_9,textLayer_10,textLayer_11,textLayer_12,textLayer_13,textLayer_1,textLayer_14,textLayer_15]
        let shapes = ["finger_1","finger_2","finger_3","finger_4","finger_5","circle_1",
                      "circle_2","circle_3","circle_4","circle_5","shape_1","shape_2","shape_3","shape_4","shape_5"]
        
        for i in 0...14 {
            let value = UserDefaults.standard.integer(forKey: shapes[i])
            print(shapes[i])
            if value != 0{
                print(array[i])
                array[i].string = "\(value)"
                print(value)
            }
            else{
                array[i].string = ""
            }
        }
    }
    
    func drawToes(){
        self.finger_1 = UIBezierPath(ovalIn: CGRect(x: 239,y: 33,width: 60,height: 84))
        self.finger_2 = UIBezierPath(ovalIn: CGRect(x: 171,y: 47,width: 35,height: 50))
        self.finger_3 = UIBezierPath(ovalIn: CGRect(x: 130,y: 104,width: 29,height: 37))
        self.finger_4 = UIBezierPath(ovalIn: CGRect(x: 89,y: 151,width: 26,height: 36))
        self.finger_5 = UIBezierPath(ovalIn: CGRect(x: 63,y: 203,width: 20,height: 30))
    }
    
    func drawCircles(){
        self.circle_1 = UIBezierPath(ovalIn: CGRect(x: 253,y: 210,width: 67,height: 67))
        self.circle_2 = UIBezierPath(ovalIn: CGRect(x: 195,y: 219,width: 45,height: 45))
        self.circle_3 = UIBezierPath(ovalIn: CGRect(x: 150,y: 239,width: 37,height: 37))
        self.circle_4 = UIBezierPath(ovalIn: CGRect(x: 112,y: 272,width: 33,height: 33))
        self.circle_5 = UIBezierPath(ovalIn: CGRect(x: 72,y: 304,width: 30,height: 30))
    }
    
    func drawComplexAreas(){
        shape_1.move(to: CGPoint(x: 78, y: 365))
        shape_1.addCurve(to: CGPoint(x: 235 , y: 283),controlPoint1: CGPoint(x: 127, y: 351),controlPoint2:                    CGPoint(x: 198, y: 251))
       // shape_1.addLine(to: CGPoint(x: 195, y: 368))
        shape_1.addCurve(to: CGPoint(x: 328 , y: 296),controlPoint1: CGPoint(x: 261, y:296),controlPoint2: CGPoint(x: 287, y: 309))
      //  shape_1.addLine(to: CGPoint(x: self.frame.size.width - 64 , y: 388.5))
        
        shape_1.addCurve(to: CGPoint(x: 313 , y: 466),controlPoint1: CGPoint(x: 309, y: 365),
                         controlPoint2: CGPoint(x: 305, y: 406))
        //shape_1.addLine(to: CGPoint(x: 347, y: 565))
        shape_1.addCurve(to: CGPoint(x: 120 , y: 484),controlPoint1: CGPoint(x: 195, y: 416),
                         controlPoint2: CGPoint(x: 161, y: 456))
        shape_1.close()
        
        shape_2.move(to: CGPoint(x: 328 , y: 296))
        shape_2.addCurve(to: CGPoint(x: 313 , y: 466),controlPoint1: CGPoint(x: 309, y: 365),
                         controlPoint2: CGPoint(x: 305, y: 406))
        shape_2.addCurve(to: CGPoint(x: 333, y: 624),controlPoint1: CGPoint(x: 310, y: 501),
                         controlPoint2: CGPoint(x: 319, y: 598))
        //shape_2.addLine(to: CGPoint(x: 247, y: 585))
        shape_2.addCurve(to: CGPoint(x:221 , y: 447),controlPoint1: CGPoint(x: 244, y:              567),controlPoint2: CGPoint(x: 212, y: 479))
        
        shape_2.addCurve(to: CGPoint(x: 328 , y: 296),controlPoint1: CGPoint(x: 245, y:              351),controlPoint2: CGPoint(x: 243, y: 371))
        shape_2.close()
        
        shape_3.move(to: CGPoint(x: 264, y: 299))
        shape_3.addCurve(to: CGPoint(x: 229, y: 403),
                         controlPoint1: CGPoint(x: 261, y: 330),
                         controlPoint2: CGPoint(x: 223, y: 357))
       // shape_3.addLine(to: CGPoint(x: 253, y: 493))
        shape_3.addCurve(to: CGPoint(x: 204, y: 438),
                         controlPoint1: CGPoint(x: 225, y: 422),
                         controlPoint2: CGPoint(x: 217, y: 437))
        //shape_3.addLine(to: CGPoint(x: 204, y: 441))
        shape_3.addCurve(to: CGPoint(x: 138, y: 324),
                         controlPoint1: CGPoint(x: 166, y: 430),
                         controlPoint2: CGPoint(x: 154, y: 372))
       // shape_3.addLine(to: CGPoint(x: 139, y: 328))
        shape_3.addCurve(to: CGPoint(x: 264, y: 299),
                         controlPoint1: CGPoint(x: 166, y: 280),
                         controlPoint2: CGPoint(x: 225, y: 259))
        shape_3.close()
        
        shape_4.move(to: CGPoint(x: 92, y: 399))
        shape_4.addCurve(to: CGPoint(x: 110, y: 447),
                         controlPoint1: CGPoint(x: 150, y: 389),
                         controlPoint2: CGPoint(x: 150, y: 430))
        shape_4.close()
        
        shape_5.move(to: CGPoint(x: 125, y: 498))
        shape_5.addCurve(to: CGPoint(x: 133, y: 549),
                         controlPoint1: CGPoint(x: 180, y: 500),
                         controlPoint2: CGPoint(x: 188, y: 525))
        shape_5.close()
        
    }
}

