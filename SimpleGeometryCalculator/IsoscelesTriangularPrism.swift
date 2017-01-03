//
//  IsoscelesTriangularPrism.swift
//  GeometryCalculator
//
//  Created by Park on 9/18/16.
//  Copyright © 2016 Park. All rights reserved.
//

import Foundation

class IsoscelesTriangularPrism: Geometry {
    var base : Double = 1.0
    var height : Double = 1.0
    var length : Double = 1.0
    
    convenience init() {
        self.init(base: 1.0, height: 1.0, length: 1.0)
    }
    
    init(base: Double, height: Double, length: Double) {
        self.base = base
        self.height = height
        self.length = length
    }
    
    var description : String {
        return "Geometry=\(Type.description) base=\(base) height=\(height) length=\(length)"
    }

    var Type : GeometryType {
        return GeometryType.IsoscelesTriangularPrism
    }
    
    var SurfaceArea : Double {
        let slant = sqrt(base * base / 4 + height * height)
        return base * height + 2 * length * slant + length * base
    }
    
    var Volume : Double {
        return base * height * length / 2
    }
    
    func getAdditionalUserInput() {
        print("Please enter IsoscelesTriangularPrism base: ")
        base = getUserInputDouble()
        print("Please enter IsoscelesTriangularPrism height: ")
        height = getUserInputDouble()
        print("Please enter IsoscelesTriangularPrism length: ")
        length = getUserInputDouble()
    }

    func printSurfaceAreaVolume() {
        print("\(description) S.A.=\(SurfaceArea) Volume=\(Volume)")
    }
}
