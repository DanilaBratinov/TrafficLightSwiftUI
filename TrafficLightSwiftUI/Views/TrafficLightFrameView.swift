import SwiftUI

struct TrafficLightFrameView: View {
    let opacityRed: Double
    let opacityYellow: Double
    let opacityGreen: Double
    
    var body: some View {
        ZStack {
            Color(UIColor.darkGray)
                .frame(width: 275, height: 600)
                .cornerRadius(40)
            
            VStack(spacing: 20) {
                ColorCircleView(color: .red, opacity: opacityRed)
                ColorCircleView(color: .yellow, opacity: opacityYellow)
                ColorCircleView(color: .green, opacity: opacityGreen)

            }
        }
    }
}

struct TrafficLightFrameView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightFrameView(opacityRed: 1, opacityYellow: 1, opacityGreen: 1)
    }
}
