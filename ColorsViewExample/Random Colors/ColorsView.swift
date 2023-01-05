//
//  ColorsView.swift
//  ColorsViewExample
//
//  Created by Marcelo Sampaio on 05/01/23.
//

import SwiftUI

struct ColorsView: View {
    var width: Double = .infinity
    var height: Double = .infinity

    var body: some View {
        Rectangle()
            .foregroundColor(Color.random)
            .frame(width: width, height: height, alignment: .center)
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
            .previewDevice(/*@START_MENU_TOKEN@*/"iPhone 11"/*@END_MENU_TOKEN@*/)
    }
}
