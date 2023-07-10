//
//  MarketDataService.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/06/11.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    func getData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .receive(on: DispatchQueue.main)
            .decode(
                type: GlobalData.self,
                decoder: JSONDecoder()
            )
            .sink(
                receiveCompletion: NetworkingManager.handleCompletion(completion:),
                receiveValue: { [weak self] returnedGlobalData in
                    self?.marketData = returnedGlobalData.data
                    self?.marketDataSubscription?.cancel()
                })
        
    }
    
}
