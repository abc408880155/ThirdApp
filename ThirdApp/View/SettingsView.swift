//
// SettingView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/20
// Copyright (c) 2023 ThirdApp. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties

    // Environment传递系统范围内的设置信息，比如浅色模式还是深色模式，时区等等
    // 当前的设置页面，通过Environment获取presentationMode对象，利用它关闭当前页面
    @Environment(\.presentationMode) var presentationMode

    // 通过AppStorage封装器从设备中读取标识为isOnboarding的值
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    // MARK: - Body

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    // MARK: - 第一部分

                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "蔬菜百科",
                                          labelImage: "info.circle")

                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("蔬菜是指可以做菜、烹饪成为食品的一类植物或菌类，蔬菜是人们日常饮食必不可少的食物之一。蔬菜可提供人体所必需的维生素和矿物质等营养物质。本App的目的就是让更多人了解每种蔬菜的特性")
                                .font(.footnote)
                        }
                    }

                    // MARK: - 第二部分

                    GroupBox(label:
                        SettingsLabelView(labelText: "定制化", labelImage: "paintbrush")) {
                            Divider().padding(.vertical, 4)

                            Text("如果需要，那么你可以通过这个开关重置引导页面。")
                                .padding(.vertical, 8)
                                .frame(minHeight: 50)
                                // 提高布局优先级，保证其内容全部显示出来
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)

                            Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                    Text("引导页面已重置").fontWeight(.bold)
                                        .foregroundColor(Color.green)
                                } else {
                                    Text("重置引导页面").fontWeight(.bold)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding()
                            .background(
                                // 系统级颜色，根据系统的浅色模式或者深色模式进行调整
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                        }

                    // MARK: - 第三部分

                    GroupBox(label: SettingsLabelView(labelText: "应用程序", labelImage: "apps.iphone")) {
                        SettingsRowView(name: "开发者", content: "zemise")
                        SettingsRowView(name: "设计者", content: "zemise")
                        SettingsRowView(name: "兼容性", content: "iOS16")
                        SettingsRowView(name: "网站", linkLabel: "百度", linkDestination: "www.baidu.com")
                        SettingsRowView(name: "微博", linkLabel: "@zemise", linkDestination: "www.weibo.com")
                        SettingsRowView(name: "SwiftUI", content: "1.0")
                        SettingsRowView(name: "版本", content: "1.3.5")
                    }

//                    Text("PlaceHolder")
                } //: VStack
                .navigationBarTitle(Text("设置"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    // 退出该视图
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
                // 设置VStack容器与父容器有一个标准的间隔距离
                .padding()
            } //: ScrollView
        } // :NaviationView
    }
}

// MARK: - Previews

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
//            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
