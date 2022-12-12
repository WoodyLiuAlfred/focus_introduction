//
//  ContentView.swift
//  focus_introduction
//
//  Created by Woody Liu on 2022/12/12.
//

import SwiftUI

enum Page: String, CaseIterable, Identifiable {
    case no_focus_section_view
    case focus_section_view
    case focus_section_not_working_view
    case fixed_focus_section_not_working_view
    
    var id: String {
        self.rawValue
    }
    
}

extension Page {
    var title: String {
        self.rawValue.split(separator: "_").joined(separator: " ").capitalized
    }
}

struct ContentView: View {
    
    @State private var paths: [Page] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            List {
                ForEach(Page.allCases, content: { page in
                    NavigationLink(page.title, value: page)
                })

            }.navigationDestination(for: Page.self, destination: { page in
                switch page {
                case .no_focus_section_view:
                    NoFocusSectionView().back($paths)
                case .focus_section_view:
                    FocusSectionView().back($paths)
                case .focus_section_not_working_view:
                    FocusSectionNotWorkingView().back($paths)
                case .fixed_focus_section_not_working_view:
                    FixedFocusSectionNotWorkingView().back($paths)
                }
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
