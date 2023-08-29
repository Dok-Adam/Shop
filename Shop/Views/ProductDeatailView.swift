//
//  ProductDeatailView.swift
//  Shop
//
//  Created by Адам Дотмерзаев on 28.08.2023.
//

import SwiftUI

struct ProductDeatailView: View {
    @EnvironmentObject var cartManager: CartManeger
    var product: Product
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                
                VStack(alignment: .leading){
                    ZStack(alignment: .topTrailing) {
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 63)
                            .padding(.trailing, 20)
                    }
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                                .font(.title2 .bold())
                            Spacer()
                            
                            Text("$\(product.price).00")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("kSecondary"))
                                .cornerRadius(12)
                        }
                        .padding(.vertical)
                        HStack(spacing: 10){
                            ForEach(0..<5) { index in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.yellow)
                            }
                            Text("(4.5)")
                                .foregroundStyle(.gray)
                        }
                        .padding(.vertical)
                        Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text(product.description)
                        
                        HStack(alignment: .top){
                            VStack(alignment: .leading)
                            Text("Size")
                                .font(.sy)
                        }
                    }
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct ProductDeatailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDeatailView(product: productList[4])
    }
}
