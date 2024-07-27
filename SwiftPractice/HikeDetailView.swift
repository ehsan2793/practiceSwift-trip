//
//  HikeDetailView.swift
//  SwiftPractice
//
//  Created by Ehsan Rahimi on 7/26/24.
//

import SwiftUI

struct HikeDetailView: View {
    let hike: Hike
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black, radius: 5, x: 0, y: 5)
                .padding(.horizontal)

            Text(hike.name)
                .font(.title)

            Text("\(hike.miles.formatted()) miles")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .fontWeight(.bold)

            Spacer()
        }
        .navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailView(hike: Hike(name: "Tamanawas Falls", photo: "tam", miles: 5))
    }
}
