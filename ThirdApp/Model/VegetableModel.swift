//
//  VegetableModel.swift
//  ThirdApp
//
//  Created by Zemise on 2023/5/12.
//

import Foundation
import SwiftUI

// MARK: - Vegetables Datas Model
struct Vegetable: Identifiable {
    var id = UUID()
    var title: String // 标题
    var headline: String // 摘要
    var image: String // 图片文件名
    var gradientcolors: [Color] // 背景渐变色
    var description: String // 描述信息
    var classfication: [String] // 分类信息
}
