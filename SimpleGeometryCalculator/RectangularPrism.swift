//
//  RectangularPrism.swift
//  GeometryCalculator
//
//  Created by Park on 9/18/16.
//  Copyright © 2016 Park. All rights reserved.
//

import Foundation

class RectangularPrism: Geometry {
    var width : Double = 1.0
    var height : Double = 1.0
    var length : Double = 1.0
    
    convenience init() {
        self.init(width: 1.0, height: 1.0, length: 1.0)
    }
    
    init(width: Double, height: Double, length: Double) {
        self.width = width
        self.height = height
        self.length = length
    }
    
    var description : String {
        return "Geometry=\(Type.description) width=\(width) height=\(height) length=\(length)"
    }
    
    var Type : GeometryType {
        return GeometryType.RectangularPrism
    }
    
    var SurfaceArea : Double {
        return 2 * (width * height + length * width + length * height)
    }
    
    var Volume : Double {
        return width * height * length
    }
    
    func getAdditionalUserInput() {
        print("Please enter RectangularPrism width: ")
        width = getUserInputDouble()
        print("Please enter RectangularPrism height: ")
        height = getUserInputDouble()
        print("Please enter RectangularPrism length: ")
        length = getUserInputDouble()
    }

    func printSurfaceAreaVolume() {
        print("\(description) S.A.=\(SurfaceArea) Volume=\(Volume)")
    }
}
