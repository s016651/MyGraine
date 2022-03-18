//
//  ViewExtension.swift
//  MyGraine
//
//  Created by Adam Lee (student LM) on 3/18/22.
//

import Foundation

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
