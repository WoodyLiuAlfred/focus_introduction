//
//  FixedNotWorking.swift
//  focus_introduction
//
//  Created by Woody Liu on 2022/12/12.
//

import Foundation
import SwiftUI

struct FixedFocusSectionNotWorkingView: View {
    
    var body: some View {
        VStack {
            HStack {
                LazyStack.LeftStack(minLength: 900).focusSection()
                Spacer()
            }.border(.red, width: 2)
            
            HStack {
                Spacer()
                LazyStack.RightStack(minLength: 900).focusSection()
            }.border(.red, width: 2)
        }
    }
    
}

struct FixedFocusSectionNotWorkingView_Previews: PreviewProvider {
    
    static var previews: some View {
        NoFocusSectionView()
    }

}

