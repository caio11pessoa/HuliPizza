//
//  ContentView.swift
//  HuliPizza
//
//  Created by Caio de Almeida Pessoa on 21/05/25.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1, 2, 3, 4, 6, 10]
    var showOrders: Bool = false
    var body: some View {
        VStack {
            
            HeaderView()
                .shadow(radius: 5)
            if showOrders
            {
                OrderView(orders: orders)
                    .cornerRadius(10)
            }
            else {
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView()
            }
            Spacer()
        }
        .padding()
        .background(LinearGradient(colors: [.cyan, .surf, .sky, .white], startPoint: .topLeading, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
    //        .colorScheme(.dark)
    //        .background(Color.black)
    
}

/* Dicas Extras
 Xcode -> Settings -> Text Editing -> Code Folding ribbon
 Minimiza partes do código
 */

