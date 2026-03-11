import SwiftUI

struct TextShape: ViewModifier {
    var colorText: Color
    var fontSize: CGFloat
    var axisX: CGFloat
    var axisY: CGFloat
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(colorText)
            .font(.system(size: fontSize))
            .offset(x: axisX, y: axisY)
    }
}

extension Text {
    func textShape(colorText: Color, fontSize: CGFloat, axisX: CGFloat, axisY: CGFloat) -> some View {
        self.modifier(TextShape(colorText: colorText, fontSize: fontSize, axisX: axisX, axisY: axisY))
    }
}
