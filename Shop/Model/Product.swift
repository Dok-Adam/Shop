//
//  Product.swift
//  Shop
//
//  Created by Адам Дотмерзаев on 28.08.2023.
//

import Foundation

struct Product : Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}

var productList = [
    Product(name: "Lether Couch",
            image: "fn1",
            description: "The sleek and modern wardrobe features a glossy black finish, complemented by silver accents. With ample storage space, it boasts multiple shelves and drawers, perfect for organizing your clothes and accessories. Equipped with a full-length mirror, this wardrobe is not only functional but also adds a touch of elegance to any bedroom decor.",
            supplier: "IKEA",
            price: 350),
    Product(name: "Nice Couch",
            image: "fn2",
            description: "This rustic wooden armoire exudes charm and character, with its distressed white paint and intricate carvings. The spacious interior offers a generous hanging space for your clothes, as well as a hidden compartment for storing valuables. The glass-paneled doors allow you to showcase your favorite items, while the bottom drawers provide additional storage options.",
            supplier: "Walmart",
            price: 450),
    Product(name: "Gray Couch",
            image: "fn3",
            description: "This rustic wooden armoire exudes charm and character, with its distressed white paint and intricate carvings. The spacious interior offers a generous hanging space for your clothes, as well as a hidden compartment for storing valuables. The glass-paneled doors allow you to showcase your favorite items, while the bottom drawers provide additional storage options.",
            supplier: "IKEA",
            price: 550),
    Product(name: "Beautiful Couch",
            image: "fn4",
            description: "The minimalist wardrobe is perfect for those who value simplicity and functionality. Made from sustainable materials, it features a clean and streamlined design in a natural wood finish. The open concept allows you to easily access and organize your clothes, while the built-in shoe rack and hanging rod provide plenty of storage space. This wardrobe seamlessly blends into any contemporary living space.",
            supplier: "IKEA",
            price: 250),
    Product(name: "Outdoor Couch",
            image: "fn5",
            description: "Inspired by vintage design, this antique-inspired wardrobe adds a touch of old-world charm to your room. Crafted from rich mahogany wood, it showcases intricate detailing and brass hardware. Behind the double doors, you'll find adjustable shelves and a clothing rod, providing ample room for your wardrobe essentials. This classic wardrobe is a timeless addition to any traditional home.",
            supplier: "Walmart",
            price: 650),
    Product(name: "Green Couch",
            image: "fn1",
            description: "The space-saving corner wardrobe is a practical solution for small bedrooms or tight spaces. Its triangular shape allows it to fit snugly into any corner, maximizing storage without sacrificing floor space. With a combination of hanging space, shelves, and drawers, it offers versatile storage options for your clothes and accessories. The mirrored door adds a sense of depth and functionality to this cleverly designed wardrobe.",
            supplier: "Home Depo",
            price: 750),
]
