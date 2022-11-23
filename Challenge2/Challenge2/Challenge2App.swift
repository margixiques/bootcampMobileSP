//
//  Challenge2App.swift
//  Challenge2
//
//  Created by Margarita Xiques on 16/11/22.
//

import SwiftUI

@main
struct Challenge2App: App {
    var body: some Scene {
        WindowGroup {
            let randomNumber = Int.random(in: 1...6)
            ContentView(number: randomNumber)
        }
    }
}
