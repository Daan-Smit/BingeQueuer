//
//  SeriesList.swift
//  BingeQueuer
//
//  Created by DaanSmit on 06/02/2026.
//

import SwiftUI

struct SeriesList: View {
    var series:[Series]
    @State var seriesDataList = seriesSourceList
    
    var body: some View {
        NavigationView {
            List {
                ForEach (seriesDataList) { series in
                    NavigationLink(destination: SeriesDetail(series: series)) {
                        BingeRow(series: series)
                    }
                }.onDelete(perform: delete)
            }
            .navigationTitle("BingeQueuer")
            .toolbar { EditButton() }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button("Add Series") {
                        
                    }
                    
                }
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        seriesDataList.remove(atOffsets: offsets)
    }
}

#Preview {
    SeriesList(series: [])
}
