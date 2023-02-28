//
//  Recipe.swift
//  Week4
//
//  Created by Joann Myung on 2/21/23.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let photo: String
    let description: String
    let rating: Int?
}
