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
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct Image_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("luna"))
    }
}
