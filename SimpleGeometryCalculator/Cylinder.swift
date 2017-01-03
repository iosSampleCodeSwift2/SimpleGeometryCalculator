//
//  Cylinder.swift
//  GeometryCalculator
//
//  Created by Park on 9/18/16.
//  Copyright © 2016 Park. All rights reserved.
//

import Foundation

class Cylinder: Geometry {
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
        return GeometryType.Cylinder
    }
    
    var SurfaceArea : Double {
        return 2 * M_PI * radius * (radius + height)
    }
    
    var Volume : Double {
        return M_PI * radius * radius * height        
    }
    
    func getAdditionalUserInput() {
        print("Please enter Cylinder radius: ")
        radius = getUserInputDouble()
        print("Please enter Cylinder height: ")
        height = getUserInputDouble()
    }

    func printSurfaceAreaVolume() {
        print("\(description) S.A.=\(SurfaceArea) Volume=\(Volume)")
    }
}
