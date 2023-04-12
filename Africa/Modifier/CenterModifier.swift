//
//  CenterModifier.swift
//  Africa
//
//  Created by Mark Trance on 4/11/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

