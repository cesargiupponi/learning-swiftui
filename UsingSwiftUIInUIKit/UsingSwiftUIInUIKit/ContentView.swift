//
//  ContentView.swift
//  UsingSwiftUIInUIKit
//
//  Created by Cesar Paiva on 01/12/24.
//

import SwiftUI

struct ContentView: View {

    @AppStorage("shouldDisplayAnimation")
    private var shouldDisplayAnimation = true

    var body: some View {
        ScrollView {
            VStack {
                images

                VStack(alignment: .leading) {
                    Text("title")
                        .font(.headline)

                    Text("subtitle")
                        .font(.subheadline)

                    ratingsView

                    Text("description")
                        .font(.body)
                }
            }
            .padding()
        }
    }

    var images: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal) {
                HStack {
                    Image("cover")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 350)
                        .id("cover")

                    ForEach(0 ..< 3) { number in
                        Image("image-\(number)")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 350)
                            .id("image-\(number)")
                    }
                }
            }.onAppear {
                guard shouldDisplayAnimation else {
                    return
                }

                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    withAnimation {
                        proxy.scrollTo(
                            "image-0",
                            anchor: .trailing
                        )
                    }

                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                        withAnimation {
                            proxy.scrollTo("cover")
                            shouldDisplayAnimation = false
                        }
                    }
                }
            }
        }
    }

    var ratingsView: some View {
        HStack(spacing: 0) {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Image(systemName: "star.leadinghalf.fill")
                .foregroundColor(.yellow)
        }
    }
}

#Preview {
    ContentView()
        .onAppear {
            UserDefaults.standard.removeObject(forKey: "shouldDisplayAnimation")
        }
}
