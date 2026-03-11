import SwiftUI


struct VerticalElementThreeElementView: View {
    var body: some View {
        VStack {
            Text("You Get")
                .textShape(colorText: .white, fontSize: 14, axisX: -170, axisY: -30)
            
            HStack(alignment: .center, spacing: 100) {
                HStack(spacing: 9) {
                    
                    ZStack {
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.gray.opacity(0.9))
                        
                        Image(systemName: "eurozonesign.ring")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    Text("BNB")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                    Image(systemName: "chevron.down")
                        .foregroundColor(.white)
                }
                .offset(x: -60, y: 0)
                
                HStack {
                    Text("1.37")
                        .font(.system(size: 18))
                    
                    Text("BNB")
                        .font(.system(size: 10))
                }
                .foregroundColor(.white)
            }
            
            Text("Balance 24.56")
                .textShape(colorText: .white, fontSize: 14, axisX: -150, axisY: 30)
        }
    }
}

