import SwiftUI

struct TrafficLightFrameView: View {
    var opacityRed: Double
    var opacityYellow: Double
    var opacityGreen: Double

    var body: some View {
        ZStack {
            Color(UIColor.darkGray)
                .frame(width: 275, height: 600)
                .cornerRadius(40)
            VStack {
                ColorCircleView(color: Color(red: 255, green: 0, blue: 0, opacity: opacityRed))
                ColorCircleView(color: Color(red: 255, green: 255, blue: 0, opacity: opacityYellow))
                ColorCircleView(color: Color(red: 0, green: 255, blue: 0, opacity: opacityGreen))
            }
        }
    }
}

struct TrafficLightFrameView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightFrameView(opacityRed: 1, opacityYellow: 1, opacityGreen: 1)
    }
}
