//
//  MenuView.swift
//  HuliPizza
//
//  Created by Caio de Almeida Pessoa on 28/05/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView {
            ForEach(1...25, id: \.self){ item in
                MenuRowView(item: item)
            }
        }
    }
}

#Preview {
    MenuView()
}
