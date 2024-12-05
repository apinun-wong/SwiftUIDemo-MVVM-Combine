//
//  PokemonItemView.swift
//  SwiftUIDemoMVVM
//
//  Created by Apinun on 5/12/2567 BE.
//

import SwiftUI

struct PokemonItemView: View {
    var body: some View {
        HStack(spacing: 8, content: {
            ZStack(alignment: .center) {
                Image(systemName: "star")
                    .resizable()
                    .frame(width: 60, height: 60)
                    
            }
            .frame(width: 120, height: 120)
            .background(.red)
            .cornerRadius(16)
            .padding()

            Spacer()
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Pokemon Name")
                    .font(.system(size: 16, weight: .semibold))
                Text("Pokemon Type")
                    .font(.system(size: 14))
            })
            .padding(16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.yellow)
        })
        .background(Color.gray)
        .cornerRadius(16)
        .padding()
    }
}

#Preview {
    PokemonItemView()
}
