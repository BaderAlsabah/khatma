//
//  ContentView.swift
//  khatma
//
//  Created by Bader Alsabah on 5/9/20.
//  Copyright © 2020 Bader Alsabah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    var body: some View {
        ZStack{
            BGTemplate()
            VStack{
                Text("سوف تحتاة إلى قراءة"+" \(counter * 30) "+"من الصفحات يومياً").foregroundColor(.white)
                Stepper("كم ختمة تريد أن تختم في هذا الشهر ؟", value: $counter, in: 1...10)
                    .padding().foregroundColor(.white)
                HStack{
                    Text(plural5atma(counter).0)
                        .foregroundColor(.white)
                    .padding()
                        .font(.largeTitle)
                    Text(plural5atma(counter).1)
                        .foregroundColor(.white)
                    .padding()
                        .font(.largeTitle)
                }
                
            }
        }
    }
    
    func plural5atma(_ counter: Int) -> (String,String){
        switch counter {
        case 1: return ("ختمة واحدة","")
        case 2: return ("ختمتان","")
        case 3...10: return ("ختمات","\(counter)")
        default: return ("ختمة","\(counter)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct BGTemplate: View {
    var body: some View {
        ZStack{
            Image("BACKGROUND").resizable().edgesIgnoringSafeArea(.all)
            VStack{
                Image("Header")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image("Mosque")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }.edgesIgnoringSafeArea(.all)
            
        }
    }
}
