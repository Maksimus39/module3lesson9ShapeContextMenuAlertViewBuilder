import SwiftUI


struct CloudShapeUpsideDown: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let svgWidth: CGFloat = 476
        let svgHeight: CGFloat = 221
        
        let scale = min(rect.width / svgWidth, rect.height / svgHeight)
        let dx = (rect.width - svgWidth * scale) / 2
        let dy = (rect.height - svgHeight * scale) / 2
        
        func p(_ x: CGFloat, _ y: CGFloat) -> CGPoint {
            let flippedY = svgHeight - y  
            return CGPoint(x: x * scale + dx, y: flippedY * scale + dy)
        }
        
        func cp(_ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ x: CGFloat, _ y: CGFloat) {
            path.addCurve(to: p(x, y), control1: p(x1, y1), control2: p(x2, y2))
        }
        
        func qp(_ cx: CGFloat, _ cy: CGFloat, _ x: CGFloat, _ y: CGFloat) {
            path.addQuadCurve(to: p(x, y), control: p(cx, cy))
        }

        
        path.move(to: p(2, 25.5))
        
        qp(1, 24, 0, 28)
        qp(0, 30, 0, 191.5)
        
        qp(0, 193, 1, 195)
        qp(2, 197, 3, 199)
        qp(4, 201, 6, 203)
        qp(7, 205, 9, 208)
        qp(11, 210, 14, 212)
        qp(17, 214, 21, 216)
        qp(24, 218, 30, 219.5)
        
        qp(80, 220.5, 156.5, 220.5)
        qp(159, 220.5, 162, 219.5)
        qp(165, 218.5, 168, 216.5)
        qp(170, 215, 172, 213)
        qp(174, 211, 175.5, 208)
        qp(177, 205, 179, 200)
        qp(181, 196, 184, 193)
        qp(185, 191, 187, 188)
        qp(189, 185, 191, 182)
        qp(193, 179, 197, 177)
        qp(200, 175, 204, 172)
        qp(207, 170, 211, 168)
        qp(214, 166, 220, 164)
        qp(224, 163.5, 251, 163.5)
        
        qp(257, 163.5, 262, 165)
        qp(266, 167, 270, 169)
        qp(273, 171, 277, 174)
        qp(280, 177, 284, 181)
        qp(287, 184, 290, 188)
        qp(292, 191, 294, 195)
        qp(296, 198, 298, 202)
        qp(299.5, 205, 302, 209)
        qp(304, 212, 307, 214.5)
        qp(309, 216, 312, 217.5)
        qp(314, 218.5, 317, 219.5)
        
        qp(380, 220.5, 448, 219.5)
        qp(451, 219, 454, 217.5)
        qp(457, 216, 460, 213)
        qp(463, 210, 466, 206)
        qp(468, 203, 470, 199)
        qp(472, 196, 474, 192)
        qp(475, 191, 476, 191)
        
        path.addLine(to: p(476, 29))
        
        qp(475, 26, 473, 22)
        qp(471, 17, 468, 13)
        qp(466, 10, 463, 7)
        qp(460, 4, 455, 2)
        qp(451, 0.5, 447.5, 0)
        
        path.addLine(to: p(345.5, 0))
        
        qp(341, 0.5, 337, 2)
        qp(332, 4, 327, 8)
        qp(323, 12, 320, 18)
        qp(319, 21, 319, 25)
        path.addLine(to: p(319, 35.5))
        
        qp(318.5, 38, 317, 42)
        qp(316, 45, 314, 49)
        qp(312, 52, 308, 56)
        qp(304, 59, 299, 61)
        qp(295, 61.5, 292, 61.5)
        
        path.addLine(to: p(181.5, 61.5))
        
        qp(178, 61, 175, 59)
        qp(172, 57, 169, 53)
        qp(166, 49, 163, 44)
        qp(161, 40, 159.5, 36)
        
        path.addLine(to: p(159.5, 27.5))
        
        qp(159, 24, 157, 19)
        qp(155, 14, 152, 10)
        qp(149, 6, 144, 3)
        qp(140, 1.5, 136.5, 1)
        
        path.addLine(to: p(25, 1))
        
        qp(22, 1.5, 19, 3)
        qp(16, 5, 13, 8)
        qp(11, 10, 9, 13)
        qp(7, 16, 5, 19)
        qp(3.5, 22, 2, 25.5)
        
        path.closeSubpath()
        return path
    }
}
