//
//  ContentView.swift
//  ThirdApp
//
//  Created by Zemise on 2023/5/12.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties

    var vegetables: [Vegetable] = vegetablesData
    // 设置页面是否需要打开的布尔变量
    @State private var isShowingSetting: Bool = false

    // MARK: - Body

    var body: some View {
        // 导航视图
        NavigationView {
            // 列表视图
            List {
                // 此处添加了一个shuffled()方法，可以得到一个打乱顺序的数组
                ForEach(vegetables.shuffled()) { item in
                    NavigationLink(destination: VegetableDetailView(vegetable: item)) {
                        VegetableRowView(vegetable: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            // 设置导航视图的标题，此处是修饰List，似乎与惯性习惯不一样
            .navigationTitle("蔬菜")
            .navigationBarItems(trailing: Button(action: {
                isShowingSetting = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isShowingSetting) {
                SettingsView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
