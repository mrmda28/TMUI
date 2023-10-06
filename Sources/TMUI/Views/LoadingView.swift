//
//  LoadingView.swift
//
//
//  Created by Dmitry Maslennikov on 06.10.2023.
//

import SwiftUI

public struct LoadingView: View {
    
    public var body: some View {
        ZStack {
            Color.black.opacity(0.4)
            ProgressView()
                .frame(width: 70, height: 70)
                .background(.background)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .ignoresSafeArea()
    }
    
    public init() { }
}

#Preview {
    LoadingView()
}
