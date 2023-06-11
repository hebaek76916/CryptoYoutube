//
//  HomeViewModel.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/05/30.
//
import Combine
import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var statistics: [StatisticModel] = []
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let coinDataService = CoinDataService()
    private let marketDataService = MarketDataService()
    private var cancelables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        // update all coins
        $searchText
            .combineLatest(coinDataService.$allCoins)
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
            .store(in: &cancelables)
        
        marketDataService.$marketData
            .map(mapGlobalMarketData)
            .sink { [weak self] returnedStats in
                self?.statistics = returnedStats
            }
            .store(in: &cancelables)
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
    
    private func mapGlobalMarketData(marketDataModel: MarketDataModel?) -> [StatisticModel] {
        var stats: [StatisticModel] = []
        
        guard let data = marketDataModel else { return stats }
        
        let marketCap = StatisticModel(
            title: "MarketCap",
            value: data.marketCap,
            percentageChange: data.marketCapChangePercentage24HUsd
        )
        let volume = StatisticModel(
            title: "24h Volume",
            value: data.volume
        )
        let btcDominance = StatisticModel(
            title: "BTC Dominance",
            value: data.btcDominance
        )
        let portfolio = StatisticModel(
            title: "Portfolio Value",
            value: "$0.00",
            percentageChange: 0
        )
        
        stats.append(contentsOf: [
            marketCap,
            volume,
            btcDominance,
            portfolio
        ])
        
        return stats
    }
}
