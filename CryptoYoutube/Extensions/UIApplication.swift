//
//  UIApplication.swift
//  CryptoYoutube
//
//  Created by 현은백 on 2023/06/07.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
