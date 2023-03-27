//
//  LandmarkDetail.swift
//  MapsKit
//
//  Created by macbook on 23.03.2023.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarksIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 500)
            
            CircleImage(image: landmark.image)
                .offset(y: -150)
                .padding(.bottom, -150)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font( .title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarksIndex].isFavorite)
                }

                HStack {
                    Text(landmark.attractions)
                        .font( .subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font( .subheadline)
                }
                .font( .subheadline)
                .foregroundColor( .secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding(.horizontal, 70)
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
    }
}
