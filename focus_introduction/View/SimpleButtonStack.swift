//
//  SimpleButtonStack.swift
//  focus_introduction
//
//  Created by Woody Liu on 2022/12/12.
//

import Foundation
import SwiftUI

struct LeftStack: View {
    var body: some View {
        HStack {
            Button("Top A") {
                print("Top A")
            }
            
            
            Button("Top B") {
                print("Top B")
            }
            
            
            Spacer()
        }
        .border(.green, width: 2)
    }
}

struct RightStack: View {
    var body: some View {
        HStack {
            Spacer()
            Button("Top C") {
                print("Top C")
            }
            
            
            Button("Top D") {
                print("Top D")
            }
            
        }
        .border(.green, width: 2)
    }
}


struct LazyStack {}

extension LazyStack {
    
    struct LeftStack: View {
        
        let minLength: CGFloat
        
        var body: some View {
                LazyHStack {
                    
                    Button("Top A") {
                        print("Top A")
                    }
                    
                    Button("Top B") {
                        print("Top B")
                    }
                    Spacer(minLength: minLength)
                }.frame(maxHeight: 120)
                .border(.green, width: 4)
                .focusSection()
        }
    }
    
    struct RightStack: View {
        
        let minLength: CGFloat
        
        var body: some View {
                LazyHStack {
                    
                    Spacer(minLength: minLength)
                    Button("Top C") {
                        print("Top C")
                    }
                    
                    Button("Top D") {
                        print("Top D")
                    }
                    
                }.frame(maxHeight: 120)
                .border(.green, width: 4)
                .focusSection()
        }
    }
    
    struct ShorterLeftStack: View {
        var body: some View {
           
                LazyHStack {
                    
                    Button("Top A") {
                        print("Top A")
                    }
                    
                    Button("Top B") {
                        print("Top B")
                    }

                }.frame(maxHeight: 120)
                .border(.green, width: 4)
        }
    }
    
    struct ShorterRightStack: View {
        var body: some View {
                LazyHStack {
                    
                    Button("Top C") {
                        print("Top C")
                    }
                    
                    Button("Top D") {
                        print("Top D")
                    }
                    
                }.frame(maxHeight: 120)
                .border(.green, width: 4)
        }
    }
    
    
    
    
}
