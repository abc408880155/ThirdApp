//
//  ThirdAppApp.swift
//  ThirdApp
//
//  Created by Zemise on 2023/5/12.
//

import SwiftUI

@main
struct ThirdAppApp: App { // App协议会去处理main()函数所负责的事情
    // 双引号括起来的isOnboarding字符串是存储在设备上的值的标识
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some Scene {
        // WindowGroup即为场景Scene
        WindowGroup {
            // 以下为引导页面视图
            if isOnboarding {
                OnBoardingView(vegetables: vegetablesData)
            } else {
                ContentView()
            }
        }
    }
}
