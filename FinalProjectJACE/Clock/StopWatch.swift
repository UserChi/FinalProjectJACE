//
//  StopWatch.swift
//  FinalProjectJACE
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct StopWatch: View {
    @State var startDate = Date.now
    @State var timeElapsed: Int = 0
    
    // 1
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    
    var body: some View {
        
        ZStack { Color(red: (173/255), green: (232/255), blue: (244/255)) .ignoresSafeArea()
            VStack {
                            Text("Time elapsed: \(timeElapsed) sec")
                                .onReceive(timer) { firedDate in
                                    print("timer fired")
                                    timeElapsed = Int(firedDate.timeIntervalSince(startDate))
                
                                }
                            Button("Pause") {
                                timer.upstream.connect().cancel()
                            }
                            Button("Resume") {
                                // 2
                                timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
                
                            }
                            Button("Stop") {
                
                                           timer.upstream.connect().cancel()
                                   }
                        }
                
                        .font(.largeTitle)
            }
        }
        
    
        
        
        
        
        
        
//        VStack {
//            Text("Time elapsed: \(timeElapsed) sec")
//                .onReceive(timer) { firedDate in
//                    print("timer fired")
//                    timeElapsed = Int(firedDate.timeIntervalSince(startDate))
//
//                }
//            Button("Pause") {
//                timer.upstream.connect().cancel()
//            }
//            Button("Resume") {
//                // 2
//                timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
//
//            }
//            Button("Stop") {
//
//                           timer.upstream.connect().cancel()
//                   }
//        }
//
//        .font(.largeTitle)
    }

struct StopWatch_Previews: PreviewProvider {
    static var previews: some View {
        StopWatch()
    }
}
