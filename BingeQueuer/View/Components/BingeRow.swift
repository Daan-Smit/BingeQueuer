//
//  BingeRow.swift
//  BingeQueuer
//
//  Created by DaanSmit on 06/02/2026.
//

import SwiftUI

struct BingeRow: View {
    var series:Series
    
    var body: some View {
        HStack {
            Image(series.image)
                .resizable()
                .frame(width: 50, height: 50)
            Text(series.title)
                
        }
    }
}

#Preview {
    Group {
        BingeRow(series: seriesSourceList[4])
        BingeRow(series: seriesSourceList[5])
    }
}
