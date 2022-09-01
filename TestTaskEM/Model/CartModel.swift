//
//  CartModel.swift
//  TestTaskEM
//
//  Created by Влад Руденко on 28.08.2022.
//

import UIKit

// MARK: - Welcome
struct Cart: Codable {
    let basket: [Basket]
    let delivery, id: String
    let total: Int
}

// MARK: - Basket
struct Basket: Codable {
    let id: Int
    let images: String
    let price: Int
    let title: String
}
