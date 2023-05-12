//
//  VegetableRowView.swift
//  ThirdApp
//
//  Created by Zemise on 2023/5/12.
//

import SwiftUI

struct VegetableRowView: View {
    // MARK: - Preperties

    var vegetable: Vegetable

    // MARK: - Body

    var body: some View {
        HStack {
            Image(vegetable.image)
                // 设置图片的绘制模式，original即按照图片的像素原样显示
                .renderingMode(.original)
                // tmeplate为非透明部分变成系统默认的黑色
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: vegetable.gradientcolors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {
                Text(vegetable.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(vegetable.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

// MARK: - Preview

struct VegetableRowView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableRowView(vegetable: vegetablesData[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
