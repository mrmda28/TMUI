//
//  TMPrimaryButtonStyle.swift
//
//
//  Created by Dmitry Maslennikov on 06.10.2023.
//

import SwiftUI

public struct TMPrimaryButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) private var isEnabled: Bool
    private let backgroundColor: Color
    
    public init(_ backgroundColor: Color = .blue) {
        self.backgroundColor = backgroundColor
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(.white)
            .background(
                isEnabled
                ? (configuration.isPressed ? backgroundColor.opacity(0.7) : backgroundColor)
                : backgroundColor.opacity(0.3)
            )
            .clipShape(RoundedRectangle(cornerRadius: 12.0))
    }
}
