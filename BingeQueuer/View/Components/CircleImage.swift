// From: https://developer.apple.com/tutorials/swiftui/
import SwiftUI

struct CircleImage: View {
    var image: Image
    var size: CGFloat
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size * 2, height: size * 2)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(
                Circle().stroke(
                    .white,
                    lineWidth: 4))
            .shadow(radius: 7)
            
    }
}

#Preview{
    CircleImage(image: Image(.ourplanet), size: 125)
}
