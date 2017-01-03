//
//  SquarePyramid.swift
//  GeometryCalculator
//
//  Created by Park on 9/18/16.
//  Copyright © 2016 Park. All rights reserved.
//

import Foundation

class SquarePyramid: Geometry {
    var base : Double = 1.0
    var height : Double = 1.0
    
    convenience init() {
        self.init(base: 1.0, height: 1.0)
    }
    
    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }
    
    var description : String {
        return "Geometry=\(Type.description) base=\(base) height=\(height)"
    }

    var Type : GeometryType {
        return GeometryType.SquarePyramid
    }
    
    var SurfaceArea : Double {
        let slant = sqrt(base * base / 4 + height * height)
        return 2 * base * slant + base * base
    }
    
    var Volume : Double {
        return base * base * height / 3
    }
    
    func getAdditionalUserInput() {
        print("Please enter SquarePyramid base: ")
        base = getUserInputDouble()
        print("Please enter SquarePyramid height: ")
        height = getUserInputDouble()
    }

    func printSurfaceAreaVolume() {
        print("\(description) S.A.=\(SurfaceArea) Volume=\(Volume)")
    }
}
