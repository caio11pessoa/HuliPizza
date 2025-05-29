//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Caio de Almeida Pessoa on 28/05/25.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Margherita Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                //                    .foregroundStyle(Color.surf)
                    .foregroundStyle(.ultraThickMaterial)
//                    .foregroundStyle(.thickMaterial)
                    .padding(.leading)
//                    .frame(width: 200, height: 150)
//                    .frame(minWidth: 150, maxWidth: 1000, maxHeight: 300)
                    
                
                if let image = UIImage(named: "0_lg"){
                    Image(uiImage: image )
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                    
                    //                    .clipShape(RoundedRectangle(cornerRadius: 10))
                        .cornerRadius(15)
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
            }
            .background(LinearGradient(colors: [.surf, .sky.opacity(0.1), ], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color:.teal, radius: 5, x:8, y: 8)
            
            VStack(alignment: .leading) {
                
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In enim nunc, lacinia non porttitor a, rutrum interdum quam. Fusce vel elit vitae libero consectetur sodales vel ac elit. Aliquam fermentum sed massa id porttitor. Vivamus sit amet luctus urna. Integer consectetur ipsum ac blandit ultricies. Sed lectus augue, imperdiet quis.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
        }
    }
}

#Preview {
    MenuItemView()
}
