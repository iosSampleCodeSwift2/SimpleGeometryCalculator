//
//  Sphere.swift
//  GeometryCalculator
//
//  Created by Park on 9/18/16.
//  Copyright © 2016 Park. All rights reserved.
//

import Foundation

class Sphere: Geometry {
    var radius : Double = 1.0
    
    convenience init() {
        self.init(radius: 1.0)
    }

    init(radius: Double) {
        self.radius = radius
    }
    
    var description : String {
        return "Geometry=\(Type.description) radius=\(radius)"
    }

    var Type : GeometryType {
        return GeometryType.Sphere
    }
    
    var SurfaceArea : Double {
        return 4 * M_PI * radius * radius
    }
    
    var Volume : Double {
        return 4 * M_PI * radius * radius * radius / 3
    }
    
    func getAdditionalUserInput() {
        print("Please enter Sphere radius: ")
        radius = getUserInputDouble()
    }

    func printSurfaceAreaVolume() {
        print("\(description) S.A.=\(SurfaceArea) Volume=\(Volume)")
    }
}
