//
//  ContentView.swift
//  HuliPizza
//
//  Created by Caio de Almeida Pessoa on 21/05/25.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1, 2, 3, 4, 6, 10]
    
    var body: some View {
        VStack {
            
            HeaderView()
            OrderView(orders: orders)
            MenuItemView()
            MenuView()
            Spacer()
        }
        .padding()
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

