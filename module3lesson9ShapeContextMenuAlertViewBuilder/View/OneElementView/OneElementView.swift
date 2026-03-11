import SwiftUI


struct OneElementView: View {
    var body: some View {
        ZStack {
            CloudShapeOptimized()
                .setShape(color: .mint, sizeHeight: 260, shape: CloudShapeOptimized.self)
            HStack {
                ZStack {
                    Rectangle()
                        .setShapeRectangle(color: .orange, width: 55, height: 30, radius: 30, shape: Rectangle.self)
                    Text("Half")
                }
                
                ZStack {
                    Rectangle()
                        .setShapeRectangle(color: .pink, width: 55, height: 30, radius: 30, shape: Rectangle.self)
                    Text("Max")
                }
            }
            .offset(x: 0, y: -65)
            
            
            VerticalElementOneElementView()
        }
    }
}


