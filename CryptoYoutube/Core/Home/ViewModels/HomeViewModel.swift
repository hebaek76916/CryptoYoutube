//
//  HomeViewModel.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/05/30.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.portfolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
}
