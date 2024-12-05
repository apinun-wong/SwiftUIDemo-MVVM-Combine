//
//  HomeViewModel.swift
//  SwiftUIDemoMVVM
//
//  Created by Apinun on 5/12/2567 BE.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    
    @Published var pokemonListItems: [PokemonListItem] = []

    func getPokemonDex() {
        pokemonListItems = [.init(name: "Test1", type: "Test Type1"),
                            .init(name: "Test2", type: "Test Type2"),]
    }
}
