//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Caio de Almeida Pessoa on 28/05/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
//                .scaledToFill()
//                .ignoresSafeArea()
                .ignoresSafeArea()
            
            Text("Huli Pizza Company")
                .font(.custom("Georgia", size: 30, relativeTo: .title))
                .foregroundStyle(.regularMaterial)
                .fontWeight(.semibold)
            
        }
    }
}
#Preview {
    HeaderView()
}
