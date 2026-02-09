import SwiftUI

struct Series: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var seasons: Int
    var image: String
    var latitude: Double
    var longitude: Double
}

var seriesSourceList = [
    Series(id: 1, title: "Archer",
           description: "Covert black ops and espionage take a back seat to zany personalities and relationships" +
           " between secret agents and drones.",
           seasons: 7,
           image: "archer", latitude: 34.053345, longitude: -118.242349),  // Los Angels, CA
    Series(id: 2, title: "Breaking Bad",
           description: "A high school chemistry teacher diagnosed with inoperable lung cancer turns to" +
           " manufacturing and selling methamphetamine in order to secure his family's future.",
           seasons: 5,
           image: "breakingbad", latitude: 35.881811, longitude: -106.299831),  // Los Alamos, NM
    Series(id: 3, title: "Mork and Mindy",
           description: "A wacky alien comes to Earth to study its residents and the life of the human woman he" +
           " boards with is never the same.",
           seasons: 4,
           image: "morkandmindy", latitude: 40.015744, longitude: -105.279320),  // Boulder, CO
    Series(id: 4, title: "Rick and Morty",
           description: "An animated series that follows the exploits of a super scientist and his not so bright" +
           " grandson",
           seasons: 2,
           image: "rickandmorty", latitude: 47.603776, longitude: -122.330765),  // Seatle, WA
    Series(id: 5, title: "Squid Game",
           description: "Hundreds of cash-strapped players accept a strange invitation to compete in children's" +
           " games. Inside, a tempting prize awaits - with deadly high stakes.",
           seasons: 1,
           image: "squidgame", latitude: 37.091579, longitude: 126.077021), // Seungbong-ri, South Korea
    Series(id: 6, title: "Our Planet",
           description: "Explores and unravels the mystery of how and why animals migrate, showing some of the" +
           " most dramatic and compelling stories in the natural world through spectacular and innovative" +
           " cinematography.",
           seasons: 2,
           image: "ourplanet", latitude: 52.518848, longitude: 13.390390) // Berlin
]
