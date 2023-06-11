//
//  PreviewProvider.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/05/17.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init() {}
    
    let homeVM = HomeViewModel()
    
    let state1 = StatisticModel(title: "Market Cap", value: "$12.58n", percentageChange: 25.34)
    let state2 = StatisticModel(title: "Total Volume", value: "$1.23Tr")
    let state3 = StatisticModel(title: "Portfolio Value", value: "$50.4k", percentageChange: -12.34)
    
    
    let coin = CoinModel(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        currentPrice: 26610,
        marketCap: 515486600914,
        marketCapRank: 1,
        fullyDilutedValuation: 558689962709,
        totalVolume: 12606620349,
        high24H: 27211,
        low24H: 26590,
        priceChange24H: -407.21144769454986,
        priceChangePercentage24H: -1.50723,
        marketCapChange24H: -8035035573.342529,
        marketCapChangePercentage24H: -1.5348,
        circulatingSupply: 19376075.0,
        totalSupply: 21000000.0,
        maxSupply: 21000000.0,
        ath: 69045,
        athChangePercentage: -61.38966,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 67.81,
        atlChangePercentage: 39213.98802,
        atlDate: "2013-07-06T00:00:00.000Z",
        roi: nil,//TODO: check
        lastUpdated: "2023-05-17T14:07:55.299Z",
        sparklineIn7D:
            SparklineIn7D(price:
                            [27672.009845357137,28163.2052924288,28116.87800104113,28201.002210899776,28175.941970215223,28235.64506942036,27430.360195034915,27469.20938646448,27712.90008140736,27884.345478571417,27543.027589024263,27704.877947414865,27639.73356593586,27554.34475527956,27590.081722157294,27526.163332637214,27467.085996924066,27503.56437096644,27491.39471410567,27511.137951126395,27538.786000546763,27420.09515016551,27443.28563537756,27488.117182629085,27413.748435675196,27427.519260450757,27325.401804633795,27038.53953957723,27208.86678772075,27187.407286429785,26892.848945640348,26941.398373370565,26839.179878161707,27025.623436422964,27045.381133443516,26941.5988586914,27024.76572929978,27048.410100426972,26901.13395541254,26792.01962876647,26611.007364864166,26683.427171105322,26548.728111725955,26270.66933070932,26323.45392114715,26281.710909796835,26377.59726501609,26368.77557192828,26392.00235441848,26420.871008155704,26459.427188552792,26446.55890951198,26321.615138558114,26293.174263869158,26340.26807234271,26322.062802244804,26472.91678897939,26472.13331650875,26768.162811295322,26709.291511571937,26795.214825574047,26783.543099391994,26872.68571593645,26768.02573457912,26835.67071981911,26813.843950633232,26780.92498446825,26758.872186622208,26801.271579609143,26824.568335752407,26839.55126469972,26843.9866398211,26824.22733645203,26850.63751965293,26819.864062779605,26839.320765816472,26815.90251592536,26827.358072151015,26838.296666394435,26977.880020440487,26855.158032841344,26879.330456226766,26907.121778576846,26915.985429441324,26795.534641795166,26739.25357929068,26727.578459668337,26812.366701286275,26843.847074868532,26827.99869804194,26829.881296087104,26881.672342490216,26857.06429304013,26858.78631614312,26857.683233534324,26849.982906217672,26810.04085557205,26835.729915285105,26885.823355794415,26922.39298163071,27114.880005382547,27026.977431903437,26946.422446412857,26917.77931115237,26877.747027746926,26936.583065788534,26912.295008804766,26937.790218886006,26933.27703128155,26770.838791299,27220.190350321016,27190.72662599178,27236.85446634466,27255.305251625305,27328.598466365504,27461.360589090647,27429.94252243227,27441.456043881164,27381.840821812268,27403.7846760913,27362.576002458092,27385.085443699998,27402.460336948985,27442.938614706538,27436.58021271464,27440.779930261495,27493.34325610982,27449.046087001538,27414.46799445969,27354.84914369341,27382.975926294726,27307.92148790125,27227.793422558792,27219.208756296466,26981.594103800227,27092.96682239252,27123.292121393082,27119.246320163453,27072.25306372482,27087.088900997504,27211.465844105252,27196.67638749656,27123.156305633638,27025.547868255562,27077.839497729237,27071.61467665202,27054.27159218844,26975.94439892065,27022.011755765103,27031.24225333238,27066.85047478361,27033.678116974217,26972.21432188317,26967.390356478532,27025.77437373207,26988.589932793337,27022.713173921147,27120.041708306977,27155.42037676891,27066.591579045395,27075.05233406094,27084.80187563108,27005.266707970768,27002.033541923476,26846.310350916916,26837.946326340472,26860.788861808214,26875.23122395308]),
        priceChangePercentage24HInCurrency: -1.5072266509404801,
        currentHoldings: nil
    )
    
}
