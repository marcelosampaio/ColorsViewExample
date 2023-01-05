//
//  SuperTileView.swift
//  ColorsViewExample
//
//  Created by Marcelo Sampaio on 05/01/23.
//

import SwiftUI

struct SuperTileView: View {
    var body: some View {
        VStack {
            ForEach((1...15), id: \.self) {_ in
                HStack {
                    ForEach((1...15), id: \.self) {_ in
                        TileView()
                    }
                }
            }
        }
    }
}

struct SuperTileView_Previews: PreviewProvider {
    static var previews: some View {
        SuperTileView()
    }
}
