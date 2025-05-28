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
        HStack(alignment: .firstTextBaseline) {
            Text("Your Order item \(order)")
            Spacer()
            Text(80.80, format: .currency(code: "Brl"))
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
