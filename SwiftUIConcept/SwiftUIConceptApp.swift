//
//  SwiftUIConceptApp.swift
//  SwiftUIConcept
//
//  Created by Agung Nawawi on 27/09/23.
//


// To access the symbols and features of SwiftUI, the app uses an import declaration to import the SwiftUI framework.
import SwiftUI


// To indicate the entry point of the SwiftUI app, the sample applies the @main attribute to the app structure.
// The entry point is responsible for the start up of the app.// To indicate the entry point of the SwiftUI app, the sample applies the @main attribute to the app structure.
// The entry point is responsible for the start up of the app.

// # Important
// A SwiftUI app contains one and only one entry point. Attempting to apply @main to more than one structure in the app results in a compiler error.
@main

// The "SwiftUIConceptApp" structure conforms to the App protocol, and provides the content of the app and its behavior.
struct SwiftUIConceptApp: App {
    // The structure implements the computed property body, which is a requirement of the App protocol.
    var body: some Scene {
        // This sample uses a WindowGroup scene to represent the main window that the app displays.
        // SwiftUI provides platform-specific behaviors for WindowGroup.
        // For instance, in macOS and iPadOS, a person can open more than one window from the group. And in macOS, a person can combine multiple instances of the window group into a set of tabs.
        WindowGroup {
            // The scene contains ContentView, a custom view that creates a view hierarchy that consists of an image and text.
            ContentView()
        }
    }
}
