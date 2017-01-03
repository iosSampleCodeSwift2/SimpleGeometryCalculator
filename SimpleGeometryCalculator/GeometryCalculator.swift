//
//  GeometrySurfaceAreaVolumeCalculator.swift
//  GeometryCalculator
//
//  Created by Park on 9/18/16.
//  Copyright © 2016 Park. All rights reserved.
//

import Foundation

class GeometryFactory {
    static func getInstance(input: GeometryType) -> Geometry? {
        switch (input) {
        case GeometryType.Sphere: return Sphere()
        case GeometryType.Cone: return Cone()
        case GeometryType.Cylinder: return Cylinder()
        case GeometryType.RectangularPrism: return RectangularPrism()
        case GeometryType.SquarePyramid: return SquarePyramid()
        case GeometryType.IsoscelesTriangularPrism: return IsoscelesTriangularPrism()
        }
    }
}

class GeometryCalculator {
    func getGeometryType(geo : Geometry) -> GeometryType?
    {
        if (geo is Sphere) {
            return GeometryType.Sphere;
        }
        else if (geo is Cone) {
            return GeometryType.Cone;
        }
        else if (geo is Cylinder) {
            return GeometryType.Cylinder;
        }
        else if (geo is RectangularPrism) {
            return GeometryType.RectangularPrism;
        }
        else if (geo is SquarePyramid) {
            return GeometryType.SquarePyramid;
        }
        else if (geo is IsoscelesTriangularPrism) {
            return GeometryType.IsoscelesTriangularPrism;
        }
        else {
            return nil
        }
    }

    func printAllGeometrySurfaceAreaVolume() {
        var geometryList = [Geometry]()
        geometryList.append(Sphere(radius: 1.5))
        geometryList.append(Cone(radius: 1.5, height: 2.5))
        geometryList.append(Cylinder(radius: 1.5, height: 2.5))
        geometryList.append(RectangularPrism(width: 2.5, height: 3.5, length: 4.5))
        geometryList.append(SquarePyramid(base: 5.5, height: 6.5))
        geometryList.append(IsoscelesTriangularPrism(base: 7.5, height: 8.5, length: 9.5))
        
        // foreach item in geometryList
        for g in geometryList {
            g.printSurfaceAreaVolume()
        }
    }
    
    func getUserInputGeometry() -> GeometryType {
        var i = 0
        let g = GeometryType.Sphere
        repeat {
            print("Please select geometry (Enter a number between 1 and 6):")
            
            if let inputString = readLine() {
                if let inputNumber = Int(inputString) {
                    i = inputNumber
                    if let g = GeometryType.valueOf(i) {
                        return g
                    }
                }
            }
        } while i < 1 || i > 6
        return g
    }

    func getUserInputGeometryFrom() -> GeometryType? {
        while true {
            print("Please select geometry (Sphere, Cone, Cylinder, RectangularPrism, SquarePyramid, IsoscelesTriangularPrism):")
            
            if let inputString = readLine() {
                if let input = GeometryType(inputString) {
                    return input
                }
            }
        }
    }
    
    func getUserExitKey() -> Bool {
        print("Please enter 'q'-key to exit or continue:")
        if let inputString = readLine() {
            return inputString == "q"
        }
        return false
    }

    func calculateUserInputGeometrySurfaceAreaVolume() {
        var geometryList = [Geometry]()
        
        repeat {
            //let input = getUserInputGeometry()
            if let input = getUserInputGeometryFrom() {
                if let geo = GeometryFactory.getInstance(input) {
                    geo.getAdditionalUserInput()
                    geo.printSurfaceAreaVolume()
                    geometryList.append(geo)
                }
            }
        } while(!getUserExitKey())

        // foreach item in geometryList
        for g in geometryList {
            g.printSurfaceAreaVolume()
        }
    }
}
