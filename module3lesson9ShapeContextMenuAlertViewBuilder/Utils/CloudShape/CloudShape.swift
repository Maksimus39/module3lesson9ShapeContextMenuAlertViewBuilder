import SwiftUI


protocol CloudShape: Shape {
    init()
}


extension CloudShapeOptimized: CloudShape {}
extension CloudShapeUpsideDown: CloudShape {}


struct ShapeStyle<T: CloudShape>: ViewModifier {
    var color: Color
    var sizeHeight: CGFloat
    
    func body(content: Content) -> some View {
        T()
            .fill(color)
            .frame(height: sizeHeight)
    }
}

extension View {
    func setShape<T: CloudShape>(color: Color, sizeHeight: CGFloat, shape: T.Type) -> some View {
        self.modifier(ShapeStyle<T>(color: color, sizeHeight: sizeHeight))
    }
}
