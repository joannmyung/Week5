//
//  ContentView.swift
//  week4_sound
//
//  Created by Joann Myung on 2/21/23.
//

//how to make navigation page. so that current page can work as page 1
//how to make audio stop

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
 
        NavigationView {
            VStack {
                NavigationLink (destination: Page1()) {
                    Text("Click Me")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
