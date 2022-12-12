//
//  FocusSectionNotWorkingView.swift
//  focus_introduction
//
//  Created by Woody Liu on 2022/12/12.
//

import Foundation
import SwiftUI


struct FocusSectionNotWorkingView: View {
    
    var body: some View {
        VStack {
            HStack {
                LazyStack.ShorterLeftStack().focusSection()
                Spacer()
            }.border(.red, width: 2)
            
            HStack {
                Spacer()
                LazyStack.ShorterRightStack().focusSection()
            }.border(.red, width: 2)
        }
    }
    
}

struct FocusSectionNotWorkingView_Previews: PreviewProvider {
    
    static var previews: some View {
        NoFocusSectionView()
    }

}

