//
// VegetableDetailView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/13
// Copyright (c) 2023 ThirdApp. All rights reserved.
//

import SwiftUI

struct VegetableDetailView: View {
    // MARK: - Properties

    var vegetable: Vegetable

    // MARK: - Body

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    VegetableHeaderView(vegetable: vegetable)

                    VStack(alignment: .leading, spacing: 20) {
                        // 标题
                        Text(vegetable.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(vegetable.gradientcolors[1])

                        // 提要
                        Text(vegetable.headline)
                            .font(.headline)
                            // 多行文本对齐
                            .multilineTextAlignment(.leading)

                        // 分类
                        VegtableClassficationView(vegetable: vegetable)

                        // 子提要
                        Text("了解更多关于: \(vegetable.title)")
                            .fontWeight(.bold)
                            .foregroundColor(vegetable.gradientcolors[1])

                        // 描述
                        Text(vegetable.description)
                            // 多行文本对齐
                            .multilineTextAlignment(.leading)

                        // 链接
                        SourceLinkView()
                            // 修饰距离上方10点
                            .padding(.top, 10)
                            // 修饰距离下方40点
                            .padding(.bottom, 40)
                    } // : VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } // : VStack
                // 设置为inline，可减少导航栏所占据的空间
                .navigationBarTitle(vegetable.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // : ScrollView
            // 忽略顶部的安全区域
            .edgesIgnoringSafeArea(.top)
        } //: NvigationView
    }
}

// MARK: - Previews

struct VegetableDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableDetailView(vegetable: vegetablesData[0])
    }
}
