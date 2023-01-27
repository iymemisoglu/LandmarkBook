//
//  CircleImageView.swift
//  LandMark Book
//
//  Created by İlker Yasin Memişoğlu on 27.01.2023.
//

import SwiftUI

struct CircleImageView: View {
    
    var image : Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.5)
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
            .overlay(Circle().stroke(Color(.white), lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("pisa"))
    }
}
