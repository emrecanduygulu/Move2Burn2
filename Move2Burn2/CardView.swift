//
//  CardView.swift
//  Move2Burn2
//
//  Created by emre can duygulu on 17.12.2023.
//

import SwiftUI

struct CardView: View {
    
    let symbol : Image
    let title : String
    let subtitle: String
    
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            HStack {
                Text(symbol)
                    .font(.custom("SegoeUI-Bold", size: 40))
                    .foregroundColor(.green)
                Spacer()
                    .frame(width: 40)
                VStack {
                    Text(title)
                        .font(.custom("SegoeUI-Bold", size: 15))
                                        .foregroundColor(.black)
                    Spacer()
                        .frame(height: 10)
                    Text(subtitle)
                        .font(.custom("SegoeUI-Bold", size: 10))
                                        .foregroundColor(.black)
                }
            }
        }
        .frame(width: 180, height: 60)
    }
}

#Preview {
    CardView(symbol: Image(systemName: "figure.walk"), title: "Walking", subtitle: "23.235")
}
