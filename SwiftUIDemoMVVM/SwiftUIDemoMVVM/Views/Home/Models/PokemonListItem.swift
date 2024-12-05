//
//  PokemonListItem.swift
//  SwiftUIDemoMVVM
//
//  Created by Apinun on 5/12/2567 BE.
//

import SwiftUI

struct PokemonListItem: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var type: String
}
