//
// VegetableDetailView.swift
// Using Swift 5.0
//
// Created by Zemise on 2023/5/13
// Copyright (c) 2023 ThirdApp. All rights reserved.
//


import SwiftUI

struct VegetableDetailView: View {
    // MARK: - Properties
    var vegetable: Vegetable

    // MARK: - Body
    var body: some View {
        Text(vegetable.title)
    }
}

    // MARK: - Previews
struct VegetableDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableDetailView(vegetable: vegetablesData[0])
    }
}
