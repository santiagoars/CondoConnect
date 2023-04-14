//
//  CondoConnectApp.swift
//  CondoConnect
//
//  Created by Santiago Aragon on 14/04/23.
//

import SwiftUI

@main
struct CondoConnectApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                Screen1()
                    .tabItem {
                        Label( "Inquilinos", systemImage: "list.clipboard")
                    }
                Screen2()
                    .tabItem{
                        Label( "Agregar", systemImage: "plus.circle")
                    }
            }
        }
    }
}
