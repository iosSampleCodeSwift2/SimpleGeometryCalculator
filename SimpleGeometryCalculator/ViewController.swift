//
//  ViewController.swift
//  SimpleGeometryCalculator
//
//  Created by Daesub Kim on 2016. 10. 18..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var labelGeo: UILabel!
    @IBOutlet weak var label01: UILabel!
    @IBOutlet weak var label02: UILabel!
    @IBOutlet weak var label03: UILabel!
    
    @IBOutlet weak var text01: UITextField!
    @IBOutlet weak var text02: UITextField!
    @IBOutlet weak var text03: UITextField!
    @IBOutlet weak var textSurface: UITextField!
    @IBOutlet weak var textVolume: UITextField!
    
    @IBOutlet weak var selector: UISegmentedControl!
    
    var selectedIndex : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        text01.delegate = self
        text02.delegate = self
        text03.delegate = self
        
        calculatorGeometry()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        calculatorGeometry()
        return true;
    }
    
    func calculatorGeometry() {
        if let type = GeometryType.valueOf(selectedIndex) {
            labelGeo.text = type.description
            
            // label & textField
            switch type {
                
            case .Sphere :
                label01.text = "Radius"
                label02.text = ""
                label03.text = ""
                
                text01.hidden = false
                text02.hidden = true
                text03.hidden = true
                
                let calc = Sphere(radius: text01.text!.toDouble())
                textSurface.text = "\(calc.SurfaceArea)"
                textVolume.text = "\(calc.Volume)"
                
            case .Cone :
                label01.text = "Radius"
                label02.text = "Height"
                label03.text = ""
                
                text01.hidden = false
                text02.hidden = false
                text03.hidden = true
                
                let calc = Cone(radius: text01.text!.toDouble(), height: text02.text!.toDouble())
                textSurface.text = "\(calc.SurfaceArea)"
                textVolume.text = "\(calc.Volume)"
                
                
            case .Cylinder :
                label01.text = "Radius"
                label02.text = "Height"
                label03.text = ""
                
                text01.hidden = false
                text02.hidden = false
                text03.hidden = true
                
                let calc = Cylinder(radius: text01.text!.toDouble(), height: text02.text!.toDouble())
                textSurface.text = "\(calc.SurfaceArea)"
                textVolume.text = "\(calc.Volume)"
                
            case .RectangularPrism :
                label01.text = "Width"
                label02.text = "Height"
                label03.text = "Length"
                
                text01.hidden = false
                text02.hidden = false
                text03.hidden = false
                
                let calc = RectangularPrism(width: text01.text!.toDouble(), height: text02.text!.toDouble() , length: text03.text!.toDouble())
                textSurface.text = "\(calc.SurfaceArea)"
                textVolume.text = "\(calc.Volume)"
                
            case .SquarePyramid :
                label01.text = "Base"
                label02.text = "Height"
                label03.text = ""
                
                text01.hidden = false
                text02.hidden = false
                text03.hidden = true
                
                let calc = SquarePyramid(base: text01.text!.toDouble(), height: text02.text!.toDouble())
                textSurface.text = "\(calc.SurfaceArea)"
                textVolume.text = "\(calc.Volume)"
                
            case .IsoscelesTriangularPrism :
                label01.text = "Base"
                label02.text = "Height"
                label03.text = "Length"
                
                text01.hidden = false
                text02.hidden = false
                text03.hidden = false
                
                let calc = IsoscelesTriangularPrism(base: text01.text!.toDouble(), height: text02.text!.toDouble() , length: text03.text!.toDouble())
                textSurface.text = "\(calc.SurfaceArea)"
                textVolume.text = "\(calc.Volume)"
                
            }
        }
    }

    @IBAction func selectGeometry(sender: UISegmentedControl) {
        selectedIndex = selector.selectedSegmentIndex + 1
        calculatorGeometry()
    }

}

extension String {
    func toDouble() -> Double {
        if let unwrappedNum = Double(self) {
            return unwrappedNum
        }
        else {
            print("Error converting \"" + self + "\" to Double")
            return 0.0
        }
    }
    func toInt() -> Int {
        if let unwrappedNum = Int(self) {
            return unwrappedNum
        }
        else {
            print("Error converting \"" + self + "\" to Int")
            return 0
        }
    }
}
