//
//  SeriesDetail.swift
//  BingeQueuer
//
//  Created by DaanSmit on 06/02/2026.
//

import SwiftUI
import CoreLocation

struct SeriesDetail: View {
    var series:Series
    var spacerSize:CGFloat = 125
    var mapHeight:CGFloat = 300
    
    var body: some View {
        ScrollView {
            MapView(coordinate: CLLocationCoordinate2DMake(series.latitude, series.longitude))
                .frame(height: mapHeight)
            
            CircleImage(image: Image(series.image), size: spacerSize)
                .offset(y: -spacerSize)
                .padding(.bottom, -spacerSize)
            
            VStack(alignment: .leading) {
                Text(series.title)
                    .font(.title)
                Text("Seasons: \(String(series.seasons))")
                    .font(.subheadline)
                    .foregroundStyle(Color.gray)
                Divider()
                Text("About \(series.title)")
                    .font(.title2)
                Text(series.description)
            }.padding(20)
        }
        .navigationTitle(series.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SeriesDetail(series: seriesSourceList[5])
}
