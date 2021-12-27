
import UIKit

class DemoView2: UIView {
    
  //  var secondViewController : SecondViewController!
    
    var valueToBeSaved : String!
    let textLayer_1 = CATextLayer()
    let textLayer_2 = CATextLayer()
    let textLayer_3 = CATextLayer()
    let textLayer_4 = CATextLayer()
    let textLayer_5 = CATextLayer()
    let textLayer_6 = CATextLayer()
    let textLayer_7 = CATextLayer()
    var finger_1 = UIBezierPath()
    var finger_2 = UIBezierPath()
    var finger_3 = UIBezierPath()
    var finger_4 = UIBezierPath()
    var finger_5 = UIBezierPath()
    var circle_1 = UIBezierPath()
    var circle_2 = UIBezierPath()
    let shapeLayer1 = CAShapeLayer()
    let shapeLayer2 = CAShapeLayer()
    let shapeLayer3 = CAShapeLayer()
    let shapeLayer4 = CAShapeLayer()
    let shapeLayer5 = CAShapeLayer()
    let shapeLayer6 = CAShapeLayer()
    let shapeLayer7 = CAShapeLayer()
    
    //weak var parentViewController: SecondViewController?
    
    //      init(parentViewController: SecondViewController) {
    //          self.parentViewController = parentViewController
    ////        self.backgroundColor = UIColor.clear
    ////        drawTextLayers()
    //      }
    //
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
        
        drawToes()
        drawComplexAreas()
        drawCircles()
        shapeLayer1.path = finger_1.cgPath
        shapeLayer2.path = finger_2.cgPath
        shapeLayer3.path = finger_3.cgPath
        shapeLayer4.path = finger_4.cgPath
        shapeLayer5.path = finger_5.cgPath
        shapeLayer6.path = circle_1.cgPath
        shapeLayer7.path = circle_2.cgPath
        [shapeLayer1,shapeLayer2,shapeLayer3,shapeLayer4,shapeLayer5,shapeLayer6,shapeLayer7].forEach { (path) in
            path.fillColor = UIColor.clear.cgColor
            self.layer.addSublayer(path)
        }
        [shapeLayer1,shapeLayer2,shapeLayer3,shapeLayer4,shapeLayer5,shapeLayer6,shapeLayer7].forEach { (path) in
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
        if circle_1.contains(location) {
            print("circle_1")
            takeValueForArea("circle_1", coordinates: textLayer_6)
            shapeLayer6.lineWidth = 3
            shapeLayer6.strokeColor = UIColor.systemGreen.cgColor
        }
        if circle_2.contains(location) {
            print("circle_2")
            takeValueForArea("circle_2", coordinates: textLayer_7)
            shapeLayer7.lineWidth = 3
            shapeLayer7.strokeColor = UIColor.systemGreen.cgColor
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
        
        [textLayer_1,textLayer_2,textLayer_3,textLayer_4,textLayer_5,textLayer_6,textLayer_7].forEach { (textlayer) in
            textlayer.foregroundColor = UIColor.black.cgColor
            textlayer.font = UIFont(name: "Avenir", size: 10.0)
            textlayer.fontSize = 20
            textlayer.alignmentMode = CATextLayerAlignmentMode.center
            textlayer.backgroundColor = UIColor.clear.cgColor
            textlayer.contentsScale = UIScreen.main.scale
            self.layer.addSublayer(textlayer)
        }
        textLayer_1.frame = CGRect(x: 263,y: 488,width: 69,height: 92)
        textLayer_2.frame = CGRect(x: 201,y: 511,width: 41,height: 54)
        textLayer_3.frame = CGRect(x: 155,y: 520,width: 32,height: 43)
        textLayer_4.frame = CGRect(x: 119,y: 500,width: 30.5,height: 39.8)
        textLayer_5.frame = CGRect(x: 82,y: 500,width: 24.5,height: 33)
        
        textLayer_6.frame = CGRect(x: 254,y: 423,width: 70,height: 70)
        textLayer_7.frame = CGRect(x: 99,y: 434,width: 47.5,height: 47.5)
        let array = [textLayer_1,textLayer_1,textLayer_2,textLayer_3,textLayer_4,textLayer_5,textLayer_6,textLayer_7]
        let shapes = ["","finger_1","finger_2","finger_3","finger_4","finger_5","circle_1",
                      "circle_2"]
        
        for i in 1...7 {
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
    func drawToes(){
        finger_1.move(to: CGPoint(x: 295, y: 487))
        finger_1.addCurve(to: CGPoint(x: 296, y: 515),
                          controlPoint1: CGPoint(x: 253, y: 485),
                          controlPoint2: CGPoint(x: 246, y: 521))
        
        
        finger_1.addCurve(to: CGPoint(x: 295, y: 487),
                          controlPoint1: CGPoint(x: 347, y: 524),
                          controlPoint2: CGPoint(x: 330, y: 481))
        finger_1.close()
        //self.finger_1 = UIBezierPath(ovalIn: CGRect(x: 245.0,y: 36.0,width: 69,height: 92))
        finger_2.move(to: CGPoint(x: 218, y: 513))
        finger_2.addCurve(to: CGPoint(x: 217, y: 539),
                          controlPoint1: CGPoint(x: 192, y: 509),
                          controlPoint2: CGPoint(x: 180, y: 541))
        
        
        finger_2.addCurve(to: CGPoint(x: 218, y: 513),
                          controlPoint1: CGPoint(x: 247, y: 545),
                          controlPoint2: CGPoint(x: 243, y: 510))
        finger_2.close()
        
        finger_3.move(to: CGPoint(x: 168, y: 522))
        finger_3.addCurve(to: CGPoint(x: 169, y: 540),
                          controlPoint1: CGPoint(x: 150, y: 522),
                          controlPoint2: CGPoint(x: 144, y: 542))
        
        
        finger_3.addCurve(to: CGPoint(x: 168, y: 522),
                          controlPoint1: CGPoint(x: 194, y: 545),
                          controlPoint2: CGPoint(x: 178, y: 518))
        finger_3.close()
        finger_4.move(to: CGPoint(x: 131, y: 520))
        finger_4.addCurve(to: CGPoint(x: 130, y: 534),
                          controlPoint1: CGPoint(x: 120, y: 522),
                          controlPoint2: CGPoint(x: 103, y: 534))
        
        
        finger_4.addCurve(to: CGPoint(x: 131, y: 520),
                          controlPoint1: CGPoint(x: 150, y: 536),
                          controlPoint2: CGPoint(x: 144, y: 520))
        finger_4.close()
        
        finger_5.move(to: CGPoint(x: 97, y: 524))
        finger_5.addCurve(to: CGPoint(x: 95, y: 536),
                          controlPoint1: CGPoint(x: 90, y: 516),
                          controlPoint2: CGPoint(x: 73, y: 537))
        
        
        finger_5.addCurve(to: CGPoint(x: 95, y: 522),
                          controlPoint1: CGPoint(x: 112, y: 537),
                          controlPoint2: CGPoint(x: 108, y: 521))
        finger_5.close()
        //self.finger_2 = UIBezierPath(ovalIn: CGRect(x: 188.0,y: 101.0,width: 41,height: 54))
        //self.finger_3 = UIBezierPath(ovalIn: CGRect(x: 141.0,y: 160.0,width: 32,height: 43))
        //self.finger_4 = UIBezierPath(ovalIn: CGRect(x: 97.0,y: 216.5,width: 30.5,height: 39.8))
        //self.finger_5 = UIBezierPath(ovalIn: CGRect(x: 65,y: 271,width: 24.5,height: 33))
    }
    
    func drawCircles(){
        // self.circle_1 = UIBezierPath(ovalIn: CGRect(x: 284,y: 285.9,width: 70,height: 70))
        //self.circle_2 = UIBezierPath(ovalIn: CGRect(x: 269,y: 423,width: 47.5,height: 47.5))
        
    }
    
    func drawComplexAreas(){
        circle_1.move(to: CGPoint(x:295,y: 423.0))
        circle_1.addLine(to: CGPoint(x:308,y: 451.0))
        circle_1.addLine(to: CGPoint(x:303,y: 457.0))
        circle_1.addLine(to: CGPoint(x:262,y: 454.0))
        circle_1.addCurve(to: CGPoint(x:295,y: 423.0),
                          controlPoint1: CGPoint(x: 240, y: 435),
                          controlPoint2: CGPoint(x: 271, y: 404))
        circle_1.close()
        
        circle_2.move(to: CGPoint(x:135,y: 434.0))
        circle_2.addLine(to: CGPoint(x:134,y: 455))
        //        circle_2.addLine(to: CGPoint(x:303,y: 457.0))
        //        circle_2.addLine(to: CGPoint(x:262,y: 454.0))
        circle_2.addCurve(to: CGPoint(x:100,y: 462),
                          controlPoint1: CGPoint(x: 126, y: 461),
                          controlPoint2: CGPoint(x: 132, y: 460))
        circle_2.addCurve(to: CGPoint(x:135,y: 434.0),
                          controlPoint1: CGPoint(x: 112, y: 441),
                          controlPoint2: CGPoint(x: 117, y: 421))
        circle_2.close()
        
        
    }
}
