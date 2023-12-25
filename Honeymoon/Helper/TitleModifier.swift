//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Drashti on 23/12/23.
//

import SwiftUI

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.pink)
    }
}
