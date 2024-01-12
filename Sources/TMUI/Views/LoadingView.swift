//
//  LoadingView.swift
//
//
//  Created by Dmitry Maslennikov on 06.10.2023.
//

import SwiftUI

public struct LoadingView: View {
    
    @Environment(\.colorScheme)
    private var colorScheme
    
    public var body: some View {
        ZStack {
            Color.black.opacity(0.4)
            ProgressView()
                .frame(width: 70, height: 70)
                .background(colorScheme == .dark ? .gray : .white)
                .opacity(0.3)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .ignoresSafeArea()
    }
    
    public init() { }
}

#Preview {
    LoadingView()
}
