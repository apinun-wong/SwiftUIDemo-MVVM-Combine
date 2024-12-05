//
//  PokemonDetailView.swift
//  SwiftUIDemoMVVM
//
//  Created by Apinun on 5/12/2567 BE.
//

import SwiftUI
import NavigationStack

struct PokemonDetailView: View {
    
    @EnvironmentObject private var navigationStack: NavigationStackCompat
    
    var body: some View {
        NavigationView {
            Text("Hello, PokemonDetailView!")
                .onTapGesture {
                    navigationStack.pop()
                }
                .navigationBarTitle("Pokemon Detail", displayMode: .inline)
        }
    }
}

#Preview {
    PokemonDetailView()
}
