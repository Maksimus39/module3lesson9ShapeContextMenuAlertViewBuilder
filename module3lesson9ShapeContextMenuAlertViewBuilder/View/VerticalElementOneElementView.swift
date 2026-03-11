import SwiftUI


struct VerticalElementOneElementView: View {
    var body: some View {
        VStack {
            Text("You Pay")
                .textShape(colorText: .black, fontSize: 14, axisX: -170, axisY: -30)
            
            HStack(alignment: .center, spacing: 100) {
                HStack(spacing: 9) {
                    
                    ZStack {
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.blue.opacity(0.3))
                        
                        Image(systemName: "dollarsign.ring.dashed")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    
                    
                    Text("USDT")
                        .font(.system(size: 14))
                    Image(systemName: "chevron.down")
                        .foregroundColor(.black)
                }
                .offset(x: -40, y: 0)
                
                HStack {
                    Text("300.00")
                        .font(.system(size: 18))
                    
                    Text("USDT")
                        .font(.system(size: 10))
                }
            }
            
            Text("Balance 12,888.56")
                .textShape(colorText: .black, fontSize: 14, axisX: -130, axisY: 30)
        }
    }
}
