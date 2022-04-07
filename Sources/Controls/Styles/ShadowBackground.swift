// ºººº----------------------------------------------------------------------ºººº \\
//
// This source file is part of the NuralTechServer private source project
//
// Copyright (c) 2021 Hamad Fuad.
//
// Author: Hamad Fuad
// Email: ihamadfouad@icloud.com
//
// Created At: 7/04/2022
// Last modified: 7/04/2022
//
// ºººº----------------------------------------------------------------------ºººº \\

import SwiftUI

struct ShadowBackground: ViewModifier {

    func body(content: Content) -> some View {

        content
            .padding(.horizontal, 12)
            .padding(.vertical, 4)
            .background(RoundedRectangle(cornerRadius: 8,
                                         style: .continuous)
                .fill(.white))
            .shadow(color: Color.black.opacity(0.2),
                    radius: 8,
                    x: 0,
                    y: 4)
    }
}

extension View {

    func shadowStyle() -> some View {
        
        modifier(ShadowBackground())
    }
}
