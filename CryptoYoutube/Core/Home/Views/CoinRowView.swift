//
//  CoinRowView.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/05/14.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingsColumn: Bool

    var body: some View {
        HStack(spacing: 0) {
            
            leftCoulmn
            
            Spacer()
            
            if showHoldingsColumn {
                centerColumn
            }
             
            rightCoulmn
        }
        .font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
            
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

extension CoinRowView {
    
    private var leftCoulmn: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(.theme.secondaryText)
                .frame(minWidth: 30)
            CoinImageView(coin: coin)
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(.theme.accent)
        }
    }
    
    private var centerColumn: some View {
        VStack {
            Text(coin.currentHoldingsValue.asCurrencyWith6Decimals())
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(.theme.accent)
    }
    
    private var rightCoulmn: some View {
        HStack(spacing: 0) {
            
           VStack(alignment: .trailing) {
               Text(coin.currentPrice.asCurrencyWith2Decimals())
                   .bold()
                   .foregroundColor(.theme.accent)
               Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                   .foregroundColor(
                       (coin.priceChangePercentage24H ?? 0) >= 0 ?
                           .theme.green : .theme.red
                   )
           }
           .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
        }
    }
}
