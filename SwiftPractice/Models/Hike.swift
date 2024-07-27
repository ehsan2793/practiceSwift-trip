//
//  Hike.swift
//  SwiftPractice
//
//  Created by Ehsan Rahimi on 7/26/24.
//

import SwiftUI

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
