//
//  StatisticView.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/06/10.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    
    var inclination: Bool {
        guard let percentageChange = stat.percentageChange else { return false }
        return percentageChange > 0
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(stat.title)
                .font(.caption)
                .foregroundColor(.theme.secondaryText)
            
            Text(stat.value)
                .font(.headline)
                .foregroundColor(.theme.accent)
            
            HStack {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(
                        Angle(degrees: inclination ? 0 : 180)
                    )
                
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                .bold()
            }
            .foregroundColor(
                inclination ? .theme.green : .theme.red
            )
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(stat: dev.state1)
            .previewLayout(.sizeThatFits)
        StatisticView(stat: dev.state2)
            .previewLayout(.sizeThatFits)
        StatisticView(stat: dev.state3)
            .previewLayout(.sizeThatFits)
    }
}
