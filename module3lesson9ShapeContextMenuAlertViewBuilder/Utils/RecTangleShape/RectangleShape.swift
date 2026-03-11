import SwiftUI


protocol RectangleShape: Shape {
    init()
}

extension Rectangle: RectangleShape {}


struct RectangleShapeFigure<T: RectangleShape>: ViewModifier {
    var color: Color
    var width: CGFloat
    var height: CGFloat
    var radius: CGFloat
    
    func body(content: Content) -> some View {
        T()
            .fill(color)
            .frame(width: width, height: height)
            .cornerRadius(radius)
    }
}

extension View {
    func setShapeRectangle<T: RectangleShape>(color: Color, width: CGFloat, height: CGFloat,radius: CGFloat, shape: T.Type) -> some View {
        self.modifier(RectangleShapeFigure<T>(color: color, width: width, height: height, radius: radius))
    }
}
