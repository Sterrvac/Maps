//
//  Image.swift
//  MapsKit
//
//  Created by macbook on 23.03.2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("luna")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct Image_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
