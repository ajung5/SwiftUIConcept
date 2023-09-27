//
//  ContentView.swift
//  SwiftUIConcept
//
//  Created by Agung Nawawi on 27/09/23.
//

// In SwiftUI, a scene contains the view hierarchy that an app displays as its user interface.
// A view hierarchy defines the layout of views relative to other views.
// In this sample, a WindowGroup scene contains the view hierarchy that ContentView composes using other views.

// #View Hierarchy
// Windowfroup => ContentView => VStack => Image; Text

// The source code begins by importing the SwiftUI framework.
// Without the import declaration, ContentView wouldn’t have access to symbols in SwiftUI.

import SwiftUI

// ContentView is a structure that conforms to the View protocol.
// A view defines one or more visual elements that appear somewhere on a screen.
// A view is typically made up of other views, creating a view hierarchy.
struct ContentView: View {
    
    // ContentView implements the computed property body, just like the "SwiftUIConceptApp" structure does in the previous section.
    // Implementing body is a common pattern that you see throughout your SwiftUI code; for instance, when a structure conforms to protocols such as App, Scene, and View.
    var body: some View {
        
        // ContentView contains the SwiftUI-provided view VStack, which arranges subviews vertically.
        // A VStack simultaneously renders any on- or off-screen views it contains.
        // Using VStack is ideal when you have a small number of subviews.
        // However, if your app needs to display many more subviews, consider using LazyVStack, which only renders the views when the app needs to display them onscreen.
        VStack {
            // The first subview in VStack is Image, a view that displays an image.
            // The sample displays an image of a globe using the initializer method init(systemName:).
            // This method creates an image view that displays a system symbol image.
            // Symbol images like globe come from SF Symbols, a library of icons that you can use in your app.
            
            Image(systemName: "globe")
                // ContentView applies the view modifier imageScale(_:) to the image view to scale the image within the view to the relative size Image.Scale.large.
                .imageScale(.large)
            
                // The foregroundColor(_:) modifier adds color to the image view.
                // In this sample, ContentView applies the semantic color accentColor, which reflects the accent color of the system or app. To learn more about color representations, see Color.
                .foregroundColor(.accentColor)
            
            // The second subview of VStack is Text, a view that displays one or more lines of read-only text.
            Text("Hello, world!")
        }
        // ContentView applies the padding(_:_:) modifier to the VStack, adding a platform-specific default amount of padding — that is, space — to the edges of the VStack view.
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
