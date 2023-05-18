//
// VegtableClassficationView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/18
// Copyright (c) 2023 ThirdApp. All rights reserved.
//

import SwiftUI

struct VegtableClassficationView: View {
    // MARK: - Properties

    var vegetable: Vegetable

    let classfication: [String] = ["门", "纲", "亚纲", "目", "科", "属", "族", "种", "分布区域"]

    // MARK: - Body

    var body: some View {
        GroupBox {
            DisclosureGroup("蔬菜分类") {
                // ForEach循环中id参数，用于区分数组中的每一个元素
                // 这里以.\self作为区分标识，也就是将数组中的元素自身作为区分标识
                ForEach(0 ..< classfication.count, id: \.self) { item in
                    // 循环体中添加一个分割线，并且设置分割线垂直方向有2点间隔距离
                    Divider().padding(.vertical, 2)
                    HStack {
                        HStack {
                            Image(systemName: "info.circle")
                            Text(classfication[item])
                        }
                        .foregroundColor(vegetable.gradientcolors[1])
                        .font(Font.system(.body).bold())

                        // 设置间隔距离最小长度为65点
                        Spacer(minLength: 65)

                        Text(vegetable.classfication[item])
                            // 设置内容右对齐
                            .multilineTextAlignment(.trailing)
                    } //: HStack
                } //: ForEach
            } //: DisclisureGroup
        } //: GroupBox
    }
}

// MARK: - Previews

struct VegtableClassficationView_Previews: PreviewProvider {
    static var previews: some View {
        VegtableClassficationView(vegetable: vegetablesData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
