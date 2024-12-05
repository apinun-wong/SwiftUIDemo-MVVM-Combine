//
//  SwiftUIDemoMVVMApp.swift
//  SwiftUIDemoMVVM
//
//  Created by Apinun on 5/12/2567 BE.
//

import SwiftUI
import NavigationStack

@main
struct SwiftUIDemoMVVMApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStackView(rootView: {
                HomeView()
            })
        }
    }
}
