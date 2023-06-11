//
//  MarketDataModel.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/06/10.
//

import Foundation
/*
 JSON data :
 URL : https://api.coingecko.com/api/v3/global
 RESPONSE :
 {
   "data": {
     "active_cryptocurrencies": 10008,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 752,
     "total_market_cap": {
       "btc": 42348013.22229722,
       "eth": 622890844.8970352,
       "ltc": 14110873304.006533,
       "bch": 10705195737.01562,
       "bnb": 4598928090.517151,
       "eos": 1600607886538.574,
       "xrp": 2204919932697.395,
       "xlm": 13557348003674.734,
       "link": 217159263553.8998,
       "dot": 244265520734.47766,
       "yfi": 203864745.24096283,
       "usd": 1086406393915.2133,
       "aed": 3990370684850.571,
       "ars": 265412949640248.66,
       "aud": 1611280828601.0752,
       "bdt": 117566614076280.38,
       "bhd": 408910329792.9585,
       "bmd": 1086406393915.2133,
       "brl": 5292819854259.775,
       "cad": 1452398239116.549,
       "chf": 981097762933.8274,
       "clp": 856631441602144.6,
       "cny": 7744556619663.998,
       "czk": 23945266047006.414,
       "dkk": 7531295044538.426,
       "eur": 1010281897893.5739,
       "gbp": 864250409642.6721,
       "hkd": 8516394042221.048,
       "huf": 372170238363533.94,
       "idr": 16175450478683908,
       "ils": 3899623158766.834,
       "inr": 89546503815264.53,
       "jpy": 151439619279811.06,
       "krw": 1398954649380678.8,
       "kwd": 333283407899.733,
       "lkr": 322489030412312.3,
       "mmk": 2280592319786000,
       "mxn": 18774623455806.348,
       "myr": 5012679101524.792,
       "ngn": 501953715052700.8,
       "nok": 11686039016788.363,
       "nzd": 1772712127485.722,
       "php": 60853424545569.74,
       "pkr": 311675564764550.2,
       "pln": 4486954010632.506,
       "rub": 89859916850219.39,
       "sar": 4074825745100.7544,
       "sek": 11761109698607.902,
       "sgd": 1460238834061.437,
       "thb": 37526456278281.13,
       "try": 25421366414418.984,
       "twd": 33337465517275.805,
       "uah": 40106764894779.64,
       "vef": 108781872222.73007,
       "vnd": 25508491042435004,
       "zar": 20330667037715.19,
       "xdr": 816407244867.4349,
       "xag": 44744918428.87871,
       "xau": 554078124.9606959,
       "bits": 42348013222297.22,
       "sats": 4234801322229722
     },
     "total_volume": {
       "btc": 3194665.668340535,
       "eth": 46989878.530321315,
       "ltc": 1064501473.9647152,
       "bch": 807582663.0729018,
       "bnb": 346935701.6778849,
       "eos": 120747271820.24104,
       "xrp": 166335595803.5658,
       "xlm": 1022744419997.4983,
       "link": 16382143837.446463,
       "dot": 18426996065.98989,
       "yfi": 15379226.864493832,
       "usd": 81956742345.5693,
       "aed": 301027114635.27545,
       "ars": 20022323921025.31,
       "aud": 121552421318.24176,
       "bdt": 8869035337288.955,
       "bhd": 30847534337.964077,
       "bmd": 81956742345.5693,
       "brl": 399281774763.68555,
       "cad": 109566575577.1715,
       "chf": 74012429439.78604,
       "clp": 64622891339481.31,
       "cny": 584236833484.626,
       "czk": 1806392166690.2224,
       "dkk": 568148724962.1895,
       "eur": 76214033409.41522,
       "gbp": 65197653973.5508,
       "hkd": 642463001084.0347,
       "huf": 28075921225321.625,
       "idr": 1220249838946063.5,
       "ils": 294181267947.15015,
       "inr": 6755243509462.379,
       "jpy": 11424360099260.625,
       "krw": 105534877550965.95,
       "kwd": 25142361589.80433,
       "lkr": 24328051199629.664,
       "mmk": 172044198372577.38,
       "mxn": 1416327247170.72,
       "myr": 378148409182.4566,
       "ngn": 37866576931418.625,
       "nok": 881575894714.3492,
       "nzd": 133730537576.8544,
       "php": 4590683987373.542,
       "pkr": 23512300829491.957,
       "pln": 338488558080.5284,
       "rub": 6778886882234.671,
       "sar": 307398267871.73553,
       "sek": 887239105610.428,
       "sgd": 110158057386.67961,
       "thb": 2830935205800.5137,
       "try": 1917746792515.1453,
       "twd": 2514924513659.3945,
       "uah": 3025589517151.082,
       "vef": 8206328611.061836,
       "vnd": 1924319333628907.8,
       "zar": 1533712659881.1428,
       "xdr": 61588442954.13669,
       "xag": 3375484322.8907986,
       "xau": 41798758.16366364,
       "bits": 3194665668340.5347,
       "sats": 319466566834053.5
     },
     "market_cap_percentage": {
       "btc": 45.80670856545964,
       "eth": 19.296795137401087,
       "usdt": 7.672229294895608,
       "bnb": 3.3896288212396097,
       "usdc": 2.6087948044263816,
       "xrp": 2.3567433295672773,
       "steth": 1.147851097273891,
       "ada": 0.8026490877247167,
       "doge": 0.7675301931730245,
       "trx": 0.5629594374513882
     },
     "market_cap_change_percentage_24h_usd": -5.77479470870473,
     "updated_at": 1686405459
   }
 }
*/

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "usd" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
