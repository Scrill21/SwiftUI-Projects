//
//  ImageContentSize.swift
//  Moonshot
//
//  Created by anthony byrd on 6/27/25.
//

import SwiftUI

struct TestImageScalingView: View {
    var body: some View {
        DynamicScaling()
    }
}

fileprivate struct ImageScaling: View {
    var body: some View {
        Image(.itadori)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
    }
}

fileprivate struct DynamicScaling: View {
    var body: some View {
        Image(.itadori)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    TestImageScalingView()
}
