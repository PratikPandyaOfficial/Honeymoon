//
//  Guide.swift
//  Honeymoon
//
//  Created by Drashti on 23/12/23.
//

import SwiftUI

struct Guide: View {
    // MARK: - Properties
    var title: String
    var subTitle: String
    var description: String
    var icon: String
    
    var body: some View {
        HStack(alignment:. center, spacing: 20){
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundStyle(.pink)
            
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subTitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundStyle(.pink)
                }
                
                Divider()
                    .padding(.bottom, 4)
                
                Text(description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

#Preview {
    Guide(title: "Title", subTitle: "Swipe right", description: "This is placeholder sentence. This is placeholder sentence. This is placeholder sentence. This is placeholder sentence. This is placeholder sentence.", icon: "heart.circle")
}
