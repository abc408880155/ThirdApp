//
//  StartButtonView.swift
//  ThirdApp
//
//  Created by Zemise on 2023/5/12.
//

import SwiftUI

// MARK: - Body

struct StartButtonView: View {
    // MARK: - Properties

    // 考虑到UserDefaults中可能不存在以isOnboarding为标识的值，故声明为可选类型
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    var body: some View {
        Button(action: {
            isOnboarding = false
            print("退出引导画面")
        }, label: {
            // 横向排列，里面各空间距离8点距离
            HStack(spacing: 8) {
                Text("开始")

                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            // 为HStack容器添加胶囊形状的背景线条，并设置线条颜色为白色，宽度1.25
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
            // 按钮主体设置为白色，导致其在所有文本中的颜色均为白色
            .accentColor(.white)
        })
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            // 显示方位为可见区域大小
            .previewLayout(.sizeThatFits)
    }
}
