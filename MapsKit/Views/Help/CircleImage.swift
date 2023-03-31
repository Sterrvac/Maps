//
//  CircleImage.swift
//  MapsKit
//
//  Created by macbook on 23.03.2023.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 300, height: 300)
            .cornerRadius(150)
//            .clipShape(Circle())
//            .overlay {
//                Circle().stroke(.white, lineWidth: 5)
//            }
            .shadow(radius: 7)
    }
}

struct Image_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("luna"))
    }
}
