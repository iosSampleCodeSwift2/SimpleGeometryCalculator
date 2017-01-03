//
//  Cone.swift
//  GeometryCalculator
//
//  Created by Park on 9/18/16.
//  Copyright © 2016 Park. All rights reserved.
//

import Foundation

class Cone: Geometry {
    var radius : Double = 1.0
    var height : Double = 1.0

    convenience init() {
        self.init(radius: 1.0, height: 1.0)
    }
    
    init(radius: Double, height: Double) {
        self.radius = radius
        self.height = height
    }
    
    var description : String {
        return "Geometry=\(Type.description) radius=\(radius) height=\(height)"
    }
    
    var Type : GeometryType {
        return GeometryType.Cone
    }
    
    var SurfaceArea : Double {
        let slant = sqrt(radius * radius + height * height)
        return M_PI * radius * (radius + slant)
    }
    
    var Volume : Double {
        return M_PI * radius * radius * height / 3
    }
    
    func getAdditionalUserInput() {
        print("Please enter Cone radius: ")
        radius = getUserInputDouble()
        print("Please enter Cone height: ")
        height = getUserInputDouble()
    }

    func printSurfaceAreaVolume() {
        print("\(description) S.A.=\(SurfaceArea) Volume=\(Volume)")
    }
}
