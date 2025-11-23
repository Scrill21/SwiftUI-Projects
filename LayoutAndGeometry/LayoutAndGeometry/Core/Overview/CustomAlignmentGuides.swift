//
//  CustomAlignmentGuides.swift
//  LayoutAndGeometry
//
//  Created by anthony byrd on 11/20/25.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct CustomAlignmentGuides: View {
    var body: some View {
        ZStack {
            HStack(alignment: .midAccountAndName) {
                VStack {
                    Text("@twostraws")
                        .alignmentGuide(.midAccountAndName) { dimension in
                            dimension[VerticalAlignment.center]
                        }
                    
                    Image(.paulHudson)
                        .resizable()
                        .frame(width: 64, height: 64)
                        .cornerRadius(10)
                }
                .background(.blue)
                
                VStack {
                    Text("Full name:")
                    Text("Paul Hudson")
                        .alignmentGuide(.midAccountAndName, computeValue: { dimension in
                            dimension[VerticalAlignment.center]
                        })
                        .font(.largeTitle)
                }
                .background(.green)
            }
            .background(.yellow)
        }
    }
}

#Preview {
    CustomAlignmentGuides()
}
