//
//  CardView.swift
//  Shop
//
//  Created by Адам Дотмерзаев on 28.08.2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManeger
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    CartProductView(product: product)
                }
                HStack {
                    Text("Your total is: ")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                    
                }
                .padding()
                PaynmentButton(action: {})
                    .padding(.horizontal, 70)
            } else {
                Text("Your Cart is Empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManeger())
    }
}
