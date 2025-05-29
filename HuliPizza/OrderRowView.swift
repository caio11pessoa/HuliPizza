//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Caio de Almeida Pessoa on 28/05/25.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        VStack {
            HStack {
                Text("Your Order item \(order)")
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text(1, format: .number)
                Text(19.90, format: .currency(code: "Brl"))
                Spacer()
                Text(19.90, format: .currency(code: "Brl"))
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
