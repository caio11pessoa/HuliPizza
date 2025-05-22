//
//  ContentView.swift
//  HuliPizza
//
//  Created by Caio de Almeida Pessoa on 21/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Huli Pizza Company")
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Hello, world!")
                .font(.title)
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
