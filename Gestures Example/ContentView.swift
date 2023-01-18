//
//  ContentView.swift
//  Gestures Example
//
//  Created by Juan Romero on 18/01/23.
//

import SwiftUI

          //TECLA PARA GESTURE TEST: OPTION+CLICK

// DragGesture
//struct ContentView: View {
//@State var  offsetValue:CGSize = .zero
////This is for Track image´s position
//    var body: some View {
//        Image(systemName: "globe")
//            .offset(x: offsetValue.width,
//                    y: offsetValue.height)
//            .gesture(
//            DragGesture()
//                .onChanged { gesture in
//                    offsetValue =
//                    gesture.translation
//                }
//        )
//        .padding()
//    }
//}

    
    
//MagnificationGesture
//    struct ContentView: View {
//    @State private var amount = 0.0
//    @State private var finalAmount = 1.0
//
//    var body: some View {
//    Image(systemName: "car.rear.fill")
//                        .scaleEffect(finalAmount+amount)
//            .gesture(MagnificationGesture()
//                .onChanged{ value in
//                    amount = value - 1
//                }
//                .onEnded{ value in
//                    finalAmount += amount
//                    amount=0
//                }
//
//            )
//
//
//
//    .padding()
//}
//}


//RotationGesture
struct ContentView: View {
    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero
    var body: some View {
        Image(systemName: "exclamationmark.square.fill")
            .foregroundColor(.red)
            .font(.system(size:180))
            .rotationEffect(amount+finalAmount)
            .gesture(RotationGesture()
                .onChanged{ value in
                    amount = value
                }
                .onEnded{ value in
                    finalAmount += amount
                    amount = .zero
                    
                }
            )
        
    }
    
}
        
        
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
