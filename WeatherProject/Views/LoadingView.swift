//
//  LoadingView.swift
//  WeatherProject
//
//  Created by Tsiory Rakotoarimanana on 2025-03-17.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView(.discreteProgress(totalUnitCount: 100)).padding()
    }
}

#Preview {
    LoadingView()
}
