//
//  ContentView.swift
//  Neumorphic Music Player
//
//  Created by Admin on 7/19/20.
//  Copyright © 2020 Yerlan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    // Slider value...
    @State var value: CGFloat = 50
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.gray)
                            .padding(.all)
                            .background(Color("Color"))
                            .clipShape(Circle())
                            // adding neuromorphic effect...
                            .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    })
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.gray)
                            .padding(.all)
                            .background(Color("Color"))
                            .clipShape(Circle())
                            // adding neuromorphic effect...
                            .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    })
                }
                Text("Now Playing")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }
            
            // Track Image...
            Image("track")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 25)
                .clipShape(Circle())
                .padding(.all, 8)
                .background(Color("Color").opacity(0.6))
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.35), radius: 8, x: 8, y: 8)
                .shadow(color: Color.white, radius: 10, x: -10, y: -10)
                .padding(.top, 35)
            
            Text("Not Afraid")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .padding(.top, 25)
            
            Text("Eminem feat Dj Khaliffa")
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.top, 8)
            
            // Timings...
            HStack {
                Text("1:15")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("3:24")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.top, 25)
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                Capsule()
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 6)
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .center)) {
                    Capsule()
                        .fill(Color("Color1").opacity(0.6))
                        .frame(width: value, height: 6)
                    
                    // Drag Button...
                    Circle()
                        .fill(Color("Color1").opacity(0.7))
                        .frame(width: 10, height: 10)
                        .padding(.all, 10)
                        .background(Color("Color"))
                        .clipShape(Circle())
                        // adding shadow
                        .shadow(color: Color("Color1").opacity(0.6), radius: 10, x: 5, y: 5)
                }
                // adding gesture...
                .gesture(DragGesture().onChanged({ (value) in
                        
                    // tracking value... двигает дорожку плеера
                    if value.location.x <= UIScreen.main.bounds.width - 30 && value.location.x >= 0 {
                        self.value = value.location.x
                    }
                }))
                .padding(.top, 8)
            }
            
            // Adding Playback Buttons...
            HStack(spacing: 25) {
                Button(action: {
                    
                }) {
                    Image(systemName: "backward.fill")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.gray)
                        .padding(.all, 25)
                        .background(Color("Color"))
                        .clipShape(Circle())
                        // adding shadow...
                        .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                }
                
                Button(action: {
                    
                }) {
                    Image(systemName: "pause.fill")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.all, 25)
                        .background(Color("Color1"))
                        .clipShape(Circle())
                        // adding shadow...
                        .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                }
                
                Button(action: {
                    
                }) {
                    Image(systemName: "forward.fill")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.gray)
                        .padding(.all, 25)
                        .background(Color("Color"))
                        .clipShape(Circle())
                        // adding shadow...
                        .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                }
            }
            .padding(.top, 25)
            
            Spacer()
        }
        .padding(.all)
        .padding(.top, 35)
        .background(Color("Color"))
        .edgesIgnoringSafeArea(.all)
    }
}
