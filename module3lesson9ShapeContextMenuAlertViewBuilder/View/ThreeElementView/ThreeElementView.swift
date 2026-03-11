import SwiftUI


struct ThreeElementView: View {
    var body: some View {
        ZStack {
            CloudShapeUpsideDown()
                .setShape(color: .black, sizeHeight: 260, shape: CloudShapeUpsideDown.self)
            
            ZStack {
                Rectangle()
                    .setShapeRectangle(color: .black.opacity(0.7), width: 120, height: 30, radius: 30, shape: Rectangle.self)
                    .offset(x: 0, y: 65)
            
                HStack {
                    Text("Overview")
                        .font(.system(size: 14))
                    Image(systemName: "chevron.down")
                }
                .foregroundColor(.white)
                .offset(x: 0, y: 65)
            }
            VerticalElementThreeElementView()
        }
    }
}

