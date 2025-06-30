//
//  AsyncImageExample.swift
//  CupcakeCorner
//
//  Created by anthony byrd on 6/30/25.
//

import SwiftUI

struct TestAsyncImage: View {
    var body: some View {
        AsyncImagePhaseExample()
    }
}

struct AsyncImageExample: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 200, height: 200)
    }
}

struct AsyncImagePhaseExample: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    TestAsyncImage()
}
