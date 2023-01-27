//
//  LandmarkDetailView.swift
//  LandMark Book
//
//  Created by İlker Yasin Memişoğlu on 26.01.2023.
//

import SwiftUI
import CoreLocation

struct LandmarkDetailView: View {
    
    var chosenLandmark : LandmarkModel
    
    var body: some View {
        VStack {
            MapView(coordinate: chosenLandmark.locationCoordinate)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.4,alignment: .center)
            
                .edgesIgnoringSafeArea(.top)
            
            CircleImageView(image: Image(chosenLandmark.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height*0.3)
                .offset(y:UIScreen.main.bounds.height * (-0.22) )
                .padding(.bottom, UIScreen.main.bounds.height * -0.18)
            
            VStack(alignment: .leading) {
                
                Text(chosenLandmark.name)
                    .foregroundColor(.orange)
                    .font(.largeTitle)
                    .padding()
              
                HStack {
                    Text(chosenLandmark.country).padding()
                    Spacer()
                    Text(chosenLandmark.category).padding()
                }
                Spacer()
            }
         
        }
        
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(chosenLandmark: pisaLandmark)
    }
}
