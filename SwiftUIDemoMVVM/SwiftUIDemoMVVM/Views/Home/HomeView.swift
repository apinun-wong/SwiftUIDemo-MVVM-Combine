//
//  HomeView.swift
//  SwiftUIDemoMVVM
//
//  Created by Apinun on 5/12/2567 BE.
//

import SwiftUI
import NavigationStack

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    @EnvironmentObject private var navigationStack: NavigationStackCompat
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.pokemonListItems) { item in
                        PokemonItemView()
                            .onTapGesture {
                                print("Hello Tap Gesture \(item.id)")
                                didSelected(item: item)
                            }
                    }
                }
            }
            .padding(.vertical, 8)
            .onAppear {
                viewModel.getPokemonDex()
            }
            .navigationBarTitle("List of Pokemon", displayMode: .inline)
        }
    }
    
    private func didSelected(item: PokemonListItem) {
        navigationStack.push(PokemonDetailView())
    }
}

#Preview {
    HomeView()
}
