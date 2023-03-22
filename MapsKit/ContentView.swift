//
//  ContentView.swift
//  RegistrationForm
//
//  Created by macbook on 18.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 500)
            Boll()
                .offset(y: -150)
                .padding(.bottom, -150)
            
            VStack(alignment: .leading) {
                Text("Almaty")
                    .font( .title)

                HStack {
                    Text("National Park")
                        .font( .subheadline)
                    Spacer()
                    Text("Kazakstan")
                        .font( .subheadline)
                }
                .font( .subheadline)
                .foregroundColor( .secondary)
                
                Divider()
                
                Text("About Almaty")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
