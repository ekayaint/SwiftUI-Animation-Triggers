//
//  ContentView.swift
//  SwiftUI-Animation-Triggers
//
//  Created by ekayaint on 6.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showButtons = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack (spacing: 20) {
                Text("Triggers").font(.largeTitle)
                Text("Button").foregroundColor(.gray).font(.title)
                Spacer()
            }.frame(maxWidth: .infinity)
            
            Group {
                Button(action: {self.showButtons.toggle()}){
                    Image(systemName: "bag.badge.plus").padding(.all,24)
                        .rotationEffect(.degrees(showButtons ? 0 : -90), anchor: .center)
                }.background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                    .offset(x: 0, y: showButtons ? -150 : 0)
                    .opacity(showButtons ? 1 : 0 )
                
                Button(action: {self.showButtons.toggle()}){
                    Image(systemName: "gauge.badge.plus").padding(.all,24)
                        .rotationEffect(.degrees(showButtons ? 0 : 90), anchor: .center)
                }.background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                    .offset(x: showButtons ? -110 : 0, y: showButtons ? -110 : 0)
                    .opacity(showButtons ? 1 : 0 )
                
                Button(action: {self.showButtons.toggle()}){
                    Image(systemName: "calendar.badge.plus").padding(.all,24)
                        .rotationEffect(.degrees(showButtons ? 0 : 90), anchor: .center)
                }.background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                    .offset(x: showButtons ? -150 : 0, y: 0)
                    .opacity(showButtons ? 1 : 0 )
                
                Button(action: {self.showButtons.toggle()}){
                    Image(systemName: "plus").padding(.all,24)
                        .rotationEffect(.degrees(showButtons ? 0 : 90), anchor: .center)
                }.background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                     
                
            }.padding(.trailing, 20)
                .accentColor(.white)
                .animation(.default, value: showButtons)
        } //ZSTACK
        .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
