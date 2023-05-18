//
// SourceLinkView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/18
// Copyright (c) 2023 ThirdApp. All rights reserved.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        GroupBox {
            HStack {
                Text("内容来源")
                Spacer()
                Link("百度百科", destination: URL(string: "https://baike.baidu.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

// MARK: - Previews

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
