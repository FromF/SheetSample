//
//  SheetView.swift
//  SheetSample
//
//  Created by 藤治仁 on 2023/10/28.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.horizontalSizeClass) var hSizeClass
    @Environment(\.verticalSizeClass) var vSizeClass
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack {
            let deviceTraitStatus = DeviceTraitStatus(hSizeClass: self.hSizeClass, vSizeClass: self.vSizeClass)
            switch deviceTraitStatus {
            case .wRhR:
                self.landscape
            case .wChR:
                self.portrait
            case .wRhC:
                self.landscape
            case .wChC:
                self.landscape
            }
        }
    }
    
    private var landscape: some View {
        VStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
                .padding()
                Spacer()
            }
            
            bodyLayout
        }
    }

    private var portrait: some View {
        VStack {
            RoundedRectangle(cornerRadius: CGFloat(5.0) / 2.0)
                .frame(width: 40, height: 5)
                .foregroundColor(.gray)
                .padding()
            
            bodyLayout
        }
    }

    private var bodyLayout: some View {
        VStack {
            Spacer()
            Text("Sheet View")
            Spacer()
        }
    }
}

#Preview {
    SheetView()
}
