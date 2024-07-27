//
//  ContentView.swift
//  SwiftPractice
//
//  Created by Ehsan Rahimi on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    let hikes: [Hike] = [
        Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanawas Falls", photo: "tam", miles: 5),
    ]

    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink {
                    HikeDetailView(hike: hike)
                } label: {
                    HikeCellView(hike: hike)
                }
            }
            .navigationTitle("Hikes")
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    let hike: Hike
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 100)

            VStack(alignment: .leading) {
                Text(hike.name)
                    .font(.headline)

                Text("\(hike.miles.formatted()) miles")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.gray)
            } //: VStack
        }
    }
}
