//
//  CryptoYoutubeApp.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/05/09.
//

import SwiftUI

@main
struct CryptoYoutubeApp: App {
    
    @State var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
