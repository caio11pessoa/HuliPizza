//
//  OrderView.swift
//  HuliPizza
//
//  Created by Caio de Almeida Pessoa on 28/05/25.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView{
                ForEach(orders, id: \.self  ){ order in
                    OrderRowView(order: order)
                        .padding(4)
                        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 10)
                        .padding(.bottom ,5)
                        .padding([.leading ,.trailing], 7)
                    
                }
            }
            .padding(.top, 65)
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
                Label {
                    Text(59.99, format: .currency(code: "Brl"))
                } icon: {
                    
                    Image(systemName: orders.isEmpty ? "cart" : "cart.fill")
                }
            }
            .padding()
            .background(.ultraThinMaterial)
            
        }
        .padding()
        .background(Color.surf)
    }
}

#Preview {
    OrderView(orders: [1,2,3,4,6])
}
