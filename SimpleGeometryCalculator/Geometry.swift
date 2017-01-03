//
//  Geometry.swift
//  GeometryCalculator
//
//  Created by Park on 9/18/16.
//  Copyright © 2016 Park. All rights reserved.
//

import Foundation

// protocol
protocol Geometry : CustomStringConvertible {
    var description : String { get }
    var Type : GeometryType { get }
    //var Bounds : GeometryBound { get set }
    //var Sides: [Double] { get set }
    var SurfaceArea : Double { get }
    var Volume : Double { get }
    func getAdditionalUserInput()
    func printSurfaceAreaVolume()
}

func getUserInputDouble() -> Double {
    var value : Double
    while true {
        if let inputString = readLine() {
            if let inputNumber = Double(inputString) {
                value = inputNumber
                print("Value: \(value)")
                return value
            }
            else {
                print("Error! Please re-enter Double Value!")
            }
        }
    }
}
