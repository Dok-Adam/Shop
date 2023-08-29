//
//  CartManager.swift
//  Shop
//
//  Created by Адам Дотмерзаев on 28.08.2023.
//

import Foundation
class CartManeger: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    func addToCard(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id
        }
            total -= product.price
    }
}
