//
//  TileView.swift
//  ColorsViewExample
//
//  Created by Marcelo Sampaio on 05/01/23.
//

import SwiftUI

struct TileView: View {
    @State var index: Int = 0
    @State var currentDate = Date.now
    
    let timer = Timer.publish(every: 0.15, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack() {
            containerView
                .onReceive(timer) { input in
                    currentDate = input
                    index += 1
                }
        }
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView()
    }
}

extension TileView {
    var containerView: some View {
        VStack {
            HStack {
                ColorsView(width: 12.5, height: 12.5)
                
                ColorsView(width: 25, height: 25)
                
                ColorsView(width: 50, height: 50)
                
                ColorsView(width: 25, height: 25)
                
                ColorsView(width: 12.5, height: 12.5)
            }
            
            HStack {
                ColorsView(width: 50, height: 50)
                
                ColorsView(width: 25, height: 25)
                
                ColorsView(width: 12.5, height: 12.5)
                
                ColorsView(width: 25, height: 25)
                
                ColorsView(width: 50, height: 50)
            }
            
            HStack {
                ColorsView(width: 12.5, height: 12.5)
                
                ColorsView(width: 25, height: 25)
                
                ColorsView(width: 50, height: 50)
                
                ColorsView(width: 25, height: 25)
                
                ColorsView(width: 12.5, height: 12.5)
            }
            
            Text("\(index)")
                .hidden()
        }
    }
}
