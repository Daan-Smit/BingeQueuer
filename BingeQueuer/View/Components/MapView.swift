// From: https://developer.apple.com/tutorials/swiftui/
// and   https://developer.apple.com/documentation/mapkit/mapkit_for_swiftui
import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    let latitudinalMeters: CLLocationDistance = 200 * 1_000 // 200 km
    @State var camera: MapCameraPosition = .automatic

    var body: some View {
        Map(position: $camera)
        .onAppear(
            perform: {
            camera = .region(
                    MKCoordinateRegion(
                        center: CLLocationCoordinate2DMake(
                            coordinate.latitude, coordinate.longitude),
                        latitudinalMeters: latitudinalMeters,
                        longitudinalMeters: latitudinalMeters))
        })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MapView(coordinate:
                CLLocationCoordinate2DMake(51.688521, 5.286698)) // Avans
}
