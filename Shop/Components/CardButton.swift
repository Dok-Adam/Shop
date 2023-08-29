//
//  CardButton.swift
//  Shop
//
//  Created by Адам Дотмерзаев on 28.08.2023.
//

import SwiftUI

struct CardButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bag.fill")
                .foregroundColor(.black)
                .padding(5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .foregroundColor(.black)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .cornerRadius(50)
            }
        }
    }
}

struct CardButton_Previews: PreviewProvider {
    static var previews: some View {
        CardButton(numberOfProducts: 1)
    }
}
