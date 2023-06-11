//
//  CoinImageService.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/06/04.
//

import Combine
import SwiftUI

class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    private let coin: CoinModel
    private let imageName: String
    
    private var imageSubscription: AnyCancellable?
    private let fileManager = LocalFileManager.instance
    private let folderName = "coin_images"
    
    init(coin: CoinModel) {
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage() {
        if let savedImage = fileManager.getImage(imageName: imageName, folderName: folderName) {
            image = savedImage
//            print("Retrived image from File Manager!")
        } else {
            downloadCoinImage()
//            print("Downloading image now")
        }
    }
    
    private func downloadCoinImage() {
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(
                receiveCompletion: NetworkingManager.handleCompletion(completion:),
                receiveValue: { [weak self] returnedImage in
                    guard
                        let self,
                        let downloadedImagName = returnedImage
                    else { return }
                    
                    self.image = downloadedImagName
                    self.imageSubscription?.cancel()
                    self.fileManager.saveImage(
                        image: downloadedImagName,
                        imageName: self.imageName,
                        folderName: self.folderName
                    )
                    
                })
    }
}
