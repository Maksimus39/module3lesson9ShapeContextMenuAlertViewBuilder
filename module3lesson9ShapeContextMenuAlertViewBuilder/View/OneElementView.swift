import SwiftUI


struct OneElementView: View {
    var body: some View {
        ZStack {
            CloudShapeOptimized()
                .fill(.mint)
                .frame(height: 260)
            
            HStack {
                ZStack {
                    Rectangle()
                        .fill(.orange)
                        .frame(width: 55, height: 30)
                        .cornerRadius(30)
                    Text("Half")
                }
              
                ZStack {
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 55, height: 30)
                        .cornerRadius(30)
                    
                    Text("Max")
                }
            }
            .offset(x: 0, y: -65)
          
            
            VStack {
                Text("You Pay")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                    .offset(x: -170, y: -30)
                
                HStack(alignment: .center, spacing: 100) {
                    HStack(spacing: 9) {
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.blue.opacity(0.3))
                        
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
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                    .offset(x: -130, y: 30)
            }
        }
    }
}
