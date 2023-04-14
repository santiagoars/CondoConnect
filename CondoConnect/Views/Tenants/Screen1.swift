//
//  Screen1.swift
//  CondoConnect
//
//  Created by Santiago Aragon on 14/04/23.
//

import SwiftUI

struct CustomColors{
    static let darkBlue = Color( "Dark Blue" )
    static let lightBlue = Color( "Light Blue" )
    static let grey = Color( "Grey" )
}

struct Screen1: View {
    var body: some View {
        ZStack{
            Text("Screen 1")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background( CustomColors.lightBlue )
        .clipped()
    }
}

struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1()
    }
}
