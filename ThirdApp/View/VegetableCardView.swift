//
//  VegetableCardView.swift
//  ThirdApp
//
//  Created by Zemise on 2023/5/12.
//

import SwiftUI

struct VegetableCardView: View {
    // MARK: - Properties 属性部分
    
    // MARK: - Body 呈现视图部分
    var body: some View {
        ZStack{
            VStack(spacing: 20){
                // Vegtable: Image
                Image("黄瓜")
                    // 可变尺寸
                    .resizable()
                    // 按比例缩放到适合的大小
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8, x: 6,y: 8)
                
                // Vegetable : Title
                Text("黄瓜")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 2,x: 2,y: 2)
                
                // Vegetable : Headline
                Text("中国各地普遍栽培，且许多地区均有温室或塑料大棚栽培；现广泛种植于温带和热带地区。黄瓜为中国各地夏季主要菜蔬之一。茎藤药用，能消炎、祛痰、镇痉。")
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
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("Color-黄瓜-Light"), Color("Color-黄瓜-Dark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Previews 预览部分
struct VegetableCardView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
