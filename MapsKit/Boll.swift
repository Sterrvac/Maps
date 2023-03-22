//
//  boll.swift
//  RegistrationForm
//
//  Created by macbook on 22.03.2023.
//

import SwiftUI

struct Boll: View {
    var body: some View {
        Image("boll")
            .frame(height: 250)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct Boll_Previews: PreviewProvider {
    static var previews: some View {
        Boll()
    }
}
