//
// VegetableHeaderView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/18
// Copyright (c) 2023 ThirdApp. All rights reserved.
//

import SwiftUI

struct VegetableHeaderView: View {
    // MARK: - Properties

    var vegetable: Vegetable
    @State private var isAnimationImage: Bool = false

    // MARK: - Body

    var body: some View {
        ZStack {
            // 左上到右下的渐变背景
            LinearGradient(gradient: Gradient(colors: vegetable.gradientcolors), startPoint: .topLeading, endPoint: .bottomTrailing)

            Image(vegetable.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
        } // ZStack
        .frame(height: 440)
        // 添加动画效果
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimationImage = true
            }
        }
    }
}

// MARK: - Previews

struct VegetableHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableHeaderView(vegetable: vegetablesData[1])
            .previewLayout(.sizeThatFits)
    }
}
