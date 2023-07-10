//
//  HapticManager.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/07/10.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
