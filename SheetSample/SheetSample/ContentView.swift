//
//  ContentView.swift
//  SheetSample
//
//  Created by 藤治仁 on 2023/10/28.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowSheet = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Sample View")
                .padding()

            Button {
                isShowSheet.toggle()
            } label: {
                Text("Show")
                    .padding()
            }
        }
        .padding()
        .sheet(isPresented: $isShowSheet) {
            SheetView()
        }
    }
}

#Preview {
    ContentView()
}
