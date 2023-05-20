//
// SettingsLabelView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/20
// Copyright (c) 2023 ThirdApp. All rights reserved.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - Properties

    var labelText: String
    var labelImage: String

    // MARK: - Body

    var body: some View {
        HStack {
            Text(labelText)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - Previews

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "蔬菜百科", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
