//
//  GeometryType.swift
//  GeometryCalculator
//
//  Created by Park on 9/18/16.
//  Copyright © 2016 Park. All rights reserved.
//

import Foundation

// enum
enum GeometryType : Int, CustomStringConvertible {
    case Sphere
    case Cone
    case Cylinder
    case RectangularPrism
    case SquarePyramid
    case IsoscelesTriangularPrism
       
    init?(_ name: String)
    {
        switch name {
        case "Sphere", "구": self = .Sphere
        case "Cone", "원뿔": self = .Cone
        case "Cylinder", "원기둥": self = .Cylinder
        case "RectangularPrism", "직각기둥": self = .RectangularPrism
        case "SquarePyramid", "사각뿔": self = .SquarePyramid
        case "IsoscelesTriangularPrism", "삼각기둥": self = .IsoscelesTriangularPrism
        default: return nil
        }
    }
    
    var description: String {
        switch self {
        case .Sphere: return "Sphere"
        case .Cone: return "Cone"
        case .Cylinder: return "Cylinder"
        case .RectangularPrism: return "RectangularPrism"
        case .SquarePyramid: return "SquarePyramid"
        case .IsoscelesTriangularPrism: return "IsoscelesTriangularPrism"
        }
    }
    
    static func valueOf(index : Int) -> GeometryType? {
        switch index {
        case 1: return .Sphere
        case 2: return .Cone
        case 3: return .Cylinder
        case 4: return .RectangularPrism
        case 5: return .SquarePyramid
        case 6: return .IsoscelesTriangularPrism
        default: return nil
        }
    }
    
    // use anyGenerator to get a generator that can enumerate across your enum values
    static func enumerate() -> AnyGenerator<GeometryType> {
        var nextIndex = Sphere.rawValue
        return anyGenerator { GeometryType(rawValue: nextIndex++) }
    }
}



