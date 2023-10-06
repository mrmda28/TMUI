//
//  TMPrimaryButtonStyle.swift
//
//
//  Created by Dmitry Maslennikov on 06.10.2023.
//

import SwiftUI

public struct TMPrimaryButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) private var isEnabled: Bool
    
    public init() { }
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(.white)
            .background(
                isEnabled
                ? (configuration.isPressed ? .blue.opacity(0.7) : .blue)
                : .blue.opacity(0.3)
            )
            .clipShape(RoundedRectangle(cornerRadius: 12.0))
    }
}
