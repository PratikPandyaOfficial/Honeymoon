//
//  CardView.swift
//  Honeymoon
//
//  Created by Drashti on 23/12/23.
//

import SwiftUI

struct CardView: View, Identifiable {
    // MARK: - Properties
    
    let id = UUID()
    var honeymoon: Destination
    
    
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay {
                VStack(alignment: .center, spacing: 12){
                    Spacer()
                    Text(honeymoon.place.uppercased())
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 4)
                        .overlay {
                            VStack{
                                Spacer()
                                Rectangle()
                                    .fill(.white)
                                    .frame(height: 1, alignment: .bottom)
                            }
                        }
                    Text(honeymoon.country.uppercased())
                        .foregroundStyle(.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                            Capsule()
                                .fill(.white)
                        )
                }
                .frame(minWidth: 280, alignment: .bottom)
                .padding(.bottom, 50)
            }
    }
}

#Preview {
    CardView(honeymoon: honeymoonData[0])
}
