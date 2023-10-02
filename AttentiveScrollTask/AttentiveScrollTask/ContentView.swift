//
//  ContentView.swift
//  AttentiveScrollTask
//
//  Created by Andrii's Macbook  on 02.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    private let rectangleHeight: CGFloat = 50.0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                ScrollViewWrapper(rectangleHeight: rectangleHeight)
                    .tabItem {
                        Text("First")
                        Image(systemName: "house")

                    }
                    .tag(0)

            }
            Rectangle()
                .fill(Color.red)
                .frame(height: rectangleHeight)
        }
    }
}

struct ScrollViewWrapper: View {
    let rectangleHeight: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(showsIndicators: true) {
                VStack {
                    ForEach(0..<100) { item in
                        Text("")
                            .padding()
                            .frame(width: geometry.size.width)
                    }
                }
                .padding(.bottom, rectangleHeight)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
