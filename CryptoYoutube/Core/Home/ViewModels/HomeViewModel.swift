//
//  HomeViewModel.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/05/30.
//
import Combine
import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        // update all coins
        $searchText
            .combineLatest(dataService.$allCoins)
            .map { (text, startingCoins) -> [CoinModel] in
                
                guard !text.isEmpty else { return startingCoins }
                
                let lowerCasedText = text.lowercased()
                
                let filteredCoins = startingCoins.filter { coin in
                    return coin.name.lowercased().contains(lowerCasedText) ||
                    coin.symbol.lowercased().contains(lowerCasedText) ||
                    coin.id.lowercased().contains(lowerCasedText)
                }
                return filteredCoins
            }
            .sink { [weak self] returnedCoin in
                self?.allCoins = returnedCoin
            }
            .store(in: &cancellables)
    }
    
    private func filterCoins(text: String, coins: [CoinModel]) -> [CoinModel] {
        guard !text.isEmpty else { return coins }
        
        let lowerCasedText = text.lowercased()
        
        return coins.filter { coin in
            return coin.name.lowercased().contains(lowerCasedText) ||
            coin.symbol.lowercased().contains(lowerCasedText) ||
            coin.id.lowercased().contains(lowerCasedText)
        }
        
    }
}
