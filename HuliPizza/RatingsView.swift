//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Caio de Almeida Pessoa on 28/05/25.
//

import SwiftUI

struct RatingsView: View {
    var rating: Int
    var body: some View {
        HStack{
            ForEach(1...6, id: \.self){ ratingPoint in
                Image(systemName: ratingPoint <= self.rating ? "fork.knife.circle.fill": "circle")
            }
        }
    }
}

#Preview {
    RatingsView(rating: 2)
}
