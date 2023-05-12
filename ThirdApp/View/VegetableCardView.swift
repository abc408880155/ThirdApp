//
//  VegetableCardView.swift
//  ThirdApp
//
//  Created by Zemise on 2023/5/12.
//

import SwiftUI

struct VegetableCardView: View {
    // MARK: - Properties 属性部分

    var vegetable: Vegetable
    @State private var isAnimation: Bool = false
    
    // MARK: - Body 呈现视图部分

    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Vegtable: Image
                Image(vegetable.image)
                    // 可变尺寸
                    .resizable()
                    // 按比例缩放到适合的大小
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimation ? 1.0 : 0.6)
                
                // Vegetable : Title
                Text(vegetable.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // Vegetable : Headline
                Text(vegetable.description)
                    .foregroundColor(.white)
                    // 多行左对齐
                    .multilineTextAlignment(.leading)
                    // 设置水平方向两边各有16点的间隔距离
                    .padding(.horizontal, 18)
                    .frame(maxWidth: 480)
                
                // Button : Start
                StartButtonView()
            } // : VStack
        } // : ZStack
        // 修饰 蔬菜卡片视图出现在屏幕上，就会开启easeOut动画，持续0.5秒，结束后isAnimation转为true
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimation = true
            }
        }
        
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: vegetable.gradientcolors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Previews 预览部分

struct VegetableCardView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableCardView(vegetable: vegetablesData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
