//
//  FocusSectionView.swift
//  focus_introduction
//
//  Created by Woody Liu on 2022/12/12.
//

import Foundation
import SwiftUI

struct FocusSectionView: View {
    
    var body: some View {
        VStack {
            LeftStack().focusSection()
            RightStack().focusSection()
        }
    }
    
}

struct FocusSectionView_Previews: PreviewProvider {
    
    static var previews: some View {
        NoFocusSectionView()
    }

}


