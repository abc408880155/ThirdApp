//
//  OnBoardingView.swift
//  ThirdApp
//
//  Created by Zemise on 2023/5/12.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - Properties

    var vegetables: [Vegetable]

    // MARK: - Body

    var body: some View {
        TabView {
            ForEach(vegetables[0 ..< 5]) { item in
                VegetableCardView(vegetable: item)
            } //: Loop
        } // TabView
        // 设置风格为Tab分页风格
        .tabViewStyle(PageTabViewStyle())
        // 垂直方向有20点间隔距离
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(vegetables: vegetablesData)
            .previewLayout(.sizeThatFits)
    }
}
