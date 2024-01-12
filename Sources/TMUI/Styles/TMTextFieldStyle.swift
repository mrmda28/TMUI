//
//  TMTextFieldStyle.swift
//
//
//  Created by Dmitry Maslennikov on 06.10.2023.
//

import SwiftUI

public struct TMTextFieldStyle: TextFieldStyle {
    
    public init() { }
    
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .autocorrectionDisabled()
            .textInputAutocapitalization(.never)
            .textFieldStyle(.plain)
            .padding(.horizontal, 10)
            .padding(.vertical, 8)
            .background(Color.gray.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 12.0))
    }
}
