//
// SettingsRowView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/20
// Copyright (c) 2023 ThirdApp. All rights reserved.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Properties

    var name: String
    // 如果是带有链接的信息
    var content: String?
    var linkLabel: String?

    var linkDestination: String?

    // MARK: - Body

    var body: some View {
        VStack{
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!,
                         destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
        
    }
}

// MARK: - Previews

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "网站", linkLabel: "百度", linkDestination: "www.baidu.com")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
