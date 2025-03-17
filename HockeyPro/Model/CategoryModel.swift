//
//  CategoryModel.swift
//  HockeyPro
//
//  Created by Cristina Cabral on 2025-03-11.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
