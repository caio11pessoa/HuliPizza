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
        VStack{
            Label {
                Text(59.99, format: .currency(code: "Brl"))
            } icon: {
                
                Image(systemName: orders.isEmpty ? "cart" : "cart.fill")
            }
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView{
                ForEach(orders, id: \.self  ){ order in
                    OrderRowView(order: order)
                }
            }
        }
    }
}

#Preview {
    OrderView(orders: [1,2,3,4,6])
}
