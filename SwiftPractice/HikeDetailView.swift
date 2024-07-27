//
//  HikeDetailView.swift
//  SwiftPractice
//
//  Created by Ehsan Rahimi on 7/26/24.
//

import SwiftUI

struct HikeDetailView: View {
    let hike: Hike
    @State private var zoomed = false
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black, radius: 5, x: 0, y: 5)
                .padding(.horizontal)
                .onTapGesture {
                    withAnimation(.spring(duration: 0.5, bounce: 0.1, blendDuration: 0.5)) {
                        zoomed.toggle()
                    }
                }

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
