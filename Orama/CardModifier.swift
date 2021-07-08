//
//  CardModifier.swift
//  Orama
//
//  Created by Arielson Ferreira on 08/07/21.
//

import Foundation
import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
}
