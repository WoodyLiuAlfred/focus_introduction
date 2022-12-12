//
//  CustomNavigationBackar.swift
//  focus_introduction
//
//  Created by Woody Liu on 2022/12/12.
//

import Foundation
import SwiftUI

struct BackButtonModifier: ViewModifier {
    
    let completion: @Sendable () -> ()
    
    @ViewBuilder
    func body(content: Content) -> some View {
        VStack {
            HStack {
                Button(action: completion, label: {
                    Image(systemName: "chevron.backward")
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                })
                Spacer()
            }.focusSection()
            Spacer()
            content
            Spacer()
        }
    }
    
}

extension View {
    func navigationBack(_ completion: @escaping @Sendable () -> Void) -> some View {
        return ModifiedContent(content: self, modifier: BackButtonModifier(completion: completion))
    }
    
    func back(_ paths: Binding<[Page]>) -> some View {
        navigationBack( {
            withAnimation {
                paths.wrappedValue = []
            }
        })
    }
}
