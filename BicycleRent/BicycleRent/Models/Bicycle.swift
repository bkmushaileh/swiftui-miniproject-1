//
//  Bicycle.swift
//  BicycleRent
//
//  Created by Khaled Al-Mushaileh on 1/5/21.
//

import Foundation
struct Bicycle :Identifiable {
    let name: String
    let id = UUID()
}

let bicycles = [
    Bicycle(name: "1"),
    Bicycle(name: "2"),
    Bicycle(name: "3"),
    Bicycle(name: "4"),
    Bicycle(name: "5")
]
