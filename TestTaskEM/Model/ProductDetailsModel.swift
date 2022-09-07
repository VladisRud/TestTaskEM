//
//  ProductDetailsModel.swift
//  TestTaskEM
//
//  Created by Влад Руденко on 28.08.2022.
//

import UIKit

// MARK: - ProductDetails
struct ProductDetails: Codable {
    let cpu, camera: String
    let capacity, color: [String]
    let id: String
    let images: [String]
    let isFavorites: Bool
    let price: Int
    let rating: Double
    let sd, ssd, title: String

    enum CodingKeys: String, CodingKey {
        case cpu = "CPU"
        case camera, capacity, color, id, images, isFavorites, price, rating, sd, ssd, title
    }
}
