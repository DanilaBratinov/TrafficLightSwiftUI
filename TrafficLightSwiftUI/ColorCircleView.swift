import SwiftUI

struct ColorCircleView: View {
    let color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white ,lineWidth: 4))
            .shadow(radius: 15)
            .padding()
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: Color(red: 255, green: 0, blue: 0, opacity: 0.5))
    }
}
